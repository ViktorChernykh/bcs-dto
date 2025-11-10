//
//  OrderBookSubscribe.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

import DecimalMath

/// The request object for subscribing to the websocket orderbooks stream.
public struct OrderBookSubscribe: Codable, Sendable {
	// MARK: Properties
	/// The type of message. Subscribe = 0,  Unsubscribe = 1.
	public let subscribeType: SubscribeType

	/// Type of data: orderbook = 0.
	public let dataType: DataType

	/// List of instruments.
	public let instruments: [Ticker]

	/// Depth of orderbook. Default = 20.
	public let depth: Int?

	// MARK: - Init
	public init(
		subscribeType: SubscribeType,
		instruments: [Ticker],
		depth: Int?
	) {
		self.subscribeType = subscribeType
		self.dataType = .orderbook
		self.instruments = instruments
		self.depth = depth
	}
}
