//
//  MarketDataSubscribe.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 06.10.2025.
//

public struct MarketDataSubscribe: Codable, Sendable {
	// MARK: Properties
	/// The type of message. Subscribe = 0,  Unsubscribe = 1.
	public let subscribeType: SubscribeType

	/// Data type subscription: orderbook = 0, candles = 1, lasttrades = 2, quotes = 3.
	public let dataType: DataType

	/// Array of Instruments.
	public let instruments: [Ticker]

	/// Depth of orderbook. Default = 20.
	public let depth: Int?

	/// Time frame type.
	public let timeFrame: TimeFrame?

	// MARK: - Init
	public init(
		subscribeType: SubscribeType,
		dataType: DataType,
		instruments: [Ticker],
		depth: Int? = nil,
		timeFrame: TimeFrame? = nil
	) {
		self.subscribeType = subscribeType
		self.dataType = dataType
		self.instruments = instruments
		self.depth = depth
		self.timeFrame = timeFrame
	}
}
