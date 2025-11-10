//
//  FindInstrumentByType.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import Foundation

/// Strategy for encoding arrays in URL query strings.
public enum QueryArrayEncoding: Sendable {
	/// Repeat the key for each value: `type=STOCK&type=BOND`.
	case repeatKey
	/// Use `[]` suffixed keys for each value: `type[]=STOCK&type[]=BOND`.
	case brackets
	/// Join values with a comma in a single key: `type=STOCK,BOND`.
	case commaSeparated
}

/// The query object for searching for a instrument by type.
public struct FindInstrumentByType: Codable, Sendable {
	// MARK: Properties
	/// Array of instrument types.
	public let type: [InstrumentType]

	/// The name of the underlying asset. Required if type=OPTIONS.
	public let baseAssetTicker: String?

	// MARK: - Init
	public init(type: [InstrumentType], baseAssetTicker: String?) {
		self.type = type
		self.baseAssetTicker = baseAssetTicker
	}
}

extension FindInstrumentByType {
	/// Encodes this struct into URL query items using a chosen array encoding.
	/// - Parameter arrayEncoding: Strategy for encoding array values.
	/// - Returns: Array of `URLQueryItem` suitable for `URLComponents`.
	public func asQueryItems(arrayEncoding: QueryArrayEncoding = .repeatKey) -> [URLQueryItem] {
		var items: [URLQueryItem] = .init()

		switch arrayEncoding {
		case .repeatKey:
			// Example: type=STOCK&type=BOND
			for kind in type {
				items.append(.init(name: "type", value: kind.rawValue))
			}
		case .brackets:
			// Example: type[]=STOCK&type[]=BOND
			for kind in type {
				items.append(.init(name: "type[]", value: kind.rawValue))
			}
		case .commaSeparated:
			// Example: type=STOCK,BOND
			let joined: String = type.map { $0.rawValue }.joined(separator: ",")
			items.append(.init(name: "type", value: joined))
		}

		if let base: String = baseAssetTicker, !base.isEmpty {
			items.append(.init(name: "baseAssetTicker", value: base))
		}

		return items
	}

	/// Builds full query string like "type=STOCK&type=BOND&baseAssetTicker=SBER"
	/// Builds a percent-encoded query string.
	/// - Parameter arrayEncoding: Strategy for encoding array values.
	/// - Returns: Percent-encoded query string, e.g. `type=STOCK&type=BOND&baseAssetTicker=SBER`.
	public func asQueryString(arrayEncoding: QueryArrayEncoding = .repeatKey) -> String {
		var components: URLComponents = .init()
		components.queryItems = asQueryItems(arrayEncoding: arrayEncoding)
		// `percentEncodedQuery` guarantees proper RFC 3986 encoding for reserved characters.
		let query: String = components.percentEncodedQuery ?? ""
		return query
	}
}
