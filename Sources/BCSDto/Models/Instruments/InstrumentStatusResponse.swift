//
//  InstrumentStatusResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import struct Foundation.Date

/// Server response containing the current status of a financial instrument.
public struct InstrumentStatusResponse: Codable, Sendable {
	// MARK: Properties
	/// Name of the current session.
	public let tradingSessionType: String?

	/// Session status: • OPEN (true) • CLOSE (false).
	public let tradingSessionStatus: String?

	/// Session ID.
	public let tradingSessionTypeID: Int?

	/// The time of the next status change (format: 2021-01-19T09:41:03).
	public let nextSessionDate: Date?

	// MARK: - Init
	public init(
		tradingSessionType: String,
		tradingSessionStatus: String,
		tradingSessionTypeID: Int,
		nextSessionDate: Date
	) {
		self.tradingSessionType = tradingSessionType
		self.tradingSessionStatus = tradingSessionStatus
		self.tradingSessionTypeID = tradingSessionTypeID
		self.nextSessionDate = nextSessionDate
	}
}
