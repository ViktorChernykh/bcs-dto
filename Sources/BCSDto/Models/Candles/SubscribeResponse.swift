//
//  SubscribeResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import struct Foundation.Date

/// Subscribe for last candle.
public struct SubscribeResponse: Codable, Sendable {
	// MARK: Properties
	/// The type of message. Subscribe = 0,  Unsubscribe = 1.
	public let subscribeType: SubscribeType

	/// Time frame type.
	public let timeFrame: TimeFrame

	/// Subscription creation time.
	public let dateTimeUtc: Date

	// MARK: - Init
	public init(
		subscribeType: SubscribeType,
		timeFrame: TimeFrame,
		dateTimeUtc: Date
	) {
		self.subscribeType = subscribeType
		self.timeFrame = timeFrame
		self.dateTimeUtc = dateTimeUtc
	}
}
