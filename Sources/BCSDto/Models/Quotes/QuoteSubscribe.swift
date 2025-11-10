//
//  QuoteSubscribe.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 06.10.2025.
//

public struct QuoteSubscribe: Codable, Sendable {
	// MARK: Properties
	/// The type of message. Subscribe = 0,  Unsubscribe = 1.
	public let subscribeType: SubscribeType?

	/// Type of data. quotes = 3
	public let dataType: DataType

	/// Array of instruments.
	public let instruments: [Ticker]

	// MARK: - Init
	public init(
		subscribeType: SubscribeType,
		dataType: DataType,
		instruments: [Ticker]
	) {
		self.subscribeType = subscribeType
		self.dataType = dataType
		self.instruments = instruments
	}
}
