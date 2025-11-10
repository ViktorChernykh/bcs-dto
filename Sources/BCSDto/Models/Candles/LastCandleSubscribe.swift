//
//  LastCandleSubscribe.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

/// Subscribe for last candles.
public struct LastCandleSubscribe: Codable, Sendable {
	// MARK: Properties
	/// The type of message. Subscribe = 0,  Unsubscribe = 1.
	public let subscribeType: SubscribeType

	/// Data type - candles=1.
	public let dataType: DataType

	/// Array of Instruments.
	public let instruments: [Ticker]

	/// Time frame type.
	public let timeFrame: TimeFrame

	// MARK: - Init
	public init(
		subscribeType: SubscribeType,
		instruments: [Ticker],
		timeFrame: TimeFrame
	) {
		self.subscribeType = subscribeType
		self.dataType = .candles
		self.instruments = instruments
		self.timeFrame = timeFrame
	}
}
