//
//  TradeSubscribe.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 06.10.2025.
//

/// The request object for subscribing to the websocket trades of the instrument stream.
public struct TradeSubscribe: Codable, Sendable {
	// MARK: Properties
	/// The type of message. Subscribe = 0,  Unsubscribe = 1.
	public let subscribeType: SubscribeType

	/// Data type subscription: orderbook = 0, candles = 1, lasttrades = 2, quotes = 3.
	public let dataType: DataType

	/// Array of Instruments.
	public let instruments: [Ticker]

	// MARK: - Init
	public init(
		subscribeType: SubscribeType,
		instruments: [Ticker]
	) {
		self.subscribeType = subscribeType
		self.dataType = .lasttrades
		self.instruments = instruments
	}
}
