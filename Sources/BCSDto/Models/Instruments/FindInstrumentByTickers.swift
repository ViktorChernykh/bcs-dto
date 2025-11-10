//
//  FindInstrumentByTickers.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

/// The query object for searching for an instruments by tickers.
public struct FindInstrumentByTickers: Codable, Sendable {
	// MARK: Properties
	/// Array of instruments for searching.
	public let tickers: [String]

	// MARK: - Init
	public init(tickers: [String]) {
		self.tickers = tickers
	}
}
