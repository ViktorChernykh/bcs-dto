//
//  CandleDto.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 06.10.2025.
//

import struct Foundation.Date

/// Request parameters for fetching candle data.
public struct CandleDto: Codable, Sendable {
	// MARK: Properties
	/// Exchange  or board.
	public let classCode: String

	/// Instrument code.
	public let ticker: String

	/// Start time is the time of the period. Format: ISO 8601 (example: 2024-10-30T09:01:00Z).
	public let startDate: Date

	/// End time is the time of the period. Format: ISO 8601 (example: 2024-10-30T09:01:00Z).
	public let endDate: Date

	/// Time frame type.
	public let timeFrame: TimeFrame

	// MARK: - Init
	public init(
		classCode: String,
		ticker: String,
		startDate: Date,
		endDate: Date,
		timeFrame: TimeFrame
	) {
		self.classCode = classCode
		self.ticker = ticker
		self.startDate = startDate
		self.endDate = endDate
		self.timeFrame = timeFrame
	}
}
