//
//  CandleStick.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import DecimalMath
import struct Foundation.Date

/// A single OHLCV candle for a given timeframe, including timestamp, prices, volume, and an error state.
public struct CandleStick: Codable, Sendable {
	// MARK: Properties
	/// Candle Time
	public let dateTimeUtc: Date

	/// Time frame type.
	public let timeFrame: TimeFrame

	/// Opening price.
	public let open: Decimals

	/// Closing price.
	public let close: Decimals

	/// Maximum price.
	public let high: Decimals

	/// Minimum price.
	public let low: Decimals

	/// Trading volume.
	public let volume: Decimals

	// MARK: - Init
	public init(
		dateTimeUtc: Date,
		timeFrame: TimeFrame,
		open: Decimals,
		close: Decimals,
		high: Decimals,
		low: Decimals,
		volume: Decimals
	) {
		self.dateTimeUtc = dateTimeUtc
		self.timeFrame = timeFrame
		self.open = open
		self.close = close
		self.high = high
		self.low = low
		self.volume = volume
	}
}
