//
//  DailySchedule.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import struct Foundation.Date

/// Full daily schedule.
public struct DailySchedule: Codable, Sendable {
	// MARK: Properties
	/// Start date (ISO 8601 format, example: 09:01:00).
	public let startDate: String

	/// End date (ISO 8601 format, example: 09:01:00).
	public let endDate: String

	/// Type of trading session.
	public let tradingSessionType: String

	/// Session status: OPEN/CLOSE.
	public let tradingSessionStatus: String

	// MARK: - Init
	public init(
		startDate: String,
		endDate: String,
		tradingSessionType: String,
		tradingSessionStatus: String
	) {
		self.startDate = startDate
		self.endDate = endDate
		self.tradingSessionType = tradingSessionType
		self.tradingSessionStatus = tradingSessionStatus
	}
}
