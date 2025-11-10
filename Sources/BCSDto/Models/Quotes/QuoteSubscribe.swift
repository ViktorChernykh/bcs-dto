//
//  QuoteSubscribe.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 06.10.2025.
//

/// The request object for subscribing to the websocket quotes of the instrument stream.
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
		instruments: [Ticker]
	) {
		self.subscribeType = subscribeType
		self.dataType = .quotes
		self.instruments = instruments
	}
}
