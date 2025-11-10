//
//  CandleResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import struct Foundation.Date

/// A server response containing historical candle data for a security.
public struct CandleResponse: Codable, Sendable {
	// MARK: Properties
	/// Exchange  or board.
	public let classCode: String

	/// Instrument code.
	public let ticker: String

	/// End time is the time of the period. Format: ISO 8601 (example: 2024-10-30T09:01:00Z).
	public let endDate: Date

	/// Start time is the time of the period. Format: ISO 8601 (example: 2024-10-30T09:01:00Z).
	public let startDate: Date

	/// Time frame type.
	public let timeFrame: TimeFrame

	/// Candle array (may not be empty).
	public let bars: [Candle]

	// MARK: - Init
	public init(
		classCode: String,
		ticker: String,
		endDate: Date,
		startDate: Date,
		timeFrame: TimeFrame,
		bars: [Candle]
	) {
		self.classCode = classCode
		self.ticker = ticker
		self.endDate = endDate
		self.startDate = startDate
		self.timeFrame = timeFrame
		self.bars = bars
	}
}
