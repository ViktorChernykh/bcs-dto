//
//  FindInstrumentByTickers.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

/// The query object for searching for a instrument by tyckers.
public struct FindInstrumentByTickers: Codable, Sendable {
	// MARK: Properties
	public let tickers: [String]

	// MARK: - Init
	public init(tickers: [String]) {
		self.tickers = tickers
	}
}
