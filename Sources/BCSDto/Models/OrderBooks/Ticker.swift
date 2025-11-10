//
//  Ticker.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

public struct Ticker: Codable, Sendable, Hashable {
	// MARK: Properties
	/// Instrument code.
	public let ticker: String

	/// Exchange  or board.
	public let classCode: String

	// MARK: - Init
	public init(ticker: String, classCode: String) {
		self.ticker = ticker
		self.classCode = classCode
	}
}
