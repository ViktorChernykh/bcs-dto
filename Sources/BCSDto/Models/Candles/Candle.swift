//
//  Candle.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import DecimalMath
import struct Foundation.Date

/// OHLCV bar for a specific time: open, high, low, close prices and traded volume.
public struct Candle: Codable, Sendable {
	// MARK: Properties
	/// Candle opening time.
	public let time: Date

	/// Opening price.
	public let open: Decimals

	/// Maximum price.
	public let high: Decimals

	/// Minimum price.
	public let low: Decimals

	/// Closing price.
	public let close: Decimals

	/// Trading volume.
	public let volume: Decimals

	// MARK: - Init
	public init(
		time: Date,
		open: Decimals,
		high: Decimals,
		low: Decimals,
		close: Decimals,
		volume: Decimals
	) {
		self.time = time
		self.open = open
		self.high = high
		self.low = low
		self.close = close
		self.volume = volume
	}
}
