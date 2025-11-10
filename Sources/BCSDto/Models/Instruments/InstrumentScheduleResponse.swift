//
//  InstrumentScheduleResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

/// Server response containing the working day status and the full daily trading schedule.
public struct InstrumentScheduleResponse: Codable, Sendable {
	// MARK: Properties
	/// Indication of the working day (true/false).
	public let isWorkDay: Bool

	/// Full daily schedule.
	public let dailySchedule: [DailySchedule]

	// MARK: - Init
	public init(isWorkDay: Bool, dailySchedule: [DailySchedule]) {
		self.isWorkDay = isWorkDay
		self.dailySchedule = dailySchedule
	}
}
