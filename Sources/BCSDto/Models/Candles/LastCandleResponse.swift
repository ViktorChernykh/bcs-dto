//
//  LastCandleResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import struct Foundation.Date
import struct Foundation.UUID

/// Last candle from websocket.
public struct LastCandleResponse: Codable, Sendable {
	// MARK: Properties
	/// Type of response.
	public let responseType: SubscribeResponseType

	/// The type of message. Subscribe = 0,  Unsubscribe = 1.
	public let subscribeType: SubscribeType?

	/// Instrument code.
	public let ticker: String?

	/// Exchange  or board.
	public let classCode: String?

	/// Time frame type.
	public let timeFrame: TimeFrame

	/// Start time is the time of the period. Format: ISO 8601 (example: 2024-10-30T09:01:00Z).
	public let dateTime: Date

	/// Candle data.
	public let candleStick: CandleStick?

	/// Error container.
	public let error: ErrorType?

	// MARK: - Init
	public init(
		responseType: SubscribeResponseType,
		subscribeType: SubscribeType?,
		ticker: String?,
		classCode: String?,
		timeFrame: TimeFrame,
		dateTime: Date,
		candleStick: CandleStick?,
		error: ErrorType?
	) {
		self.responseType = responseType
		self.subscribeType = subscribeType
		self.ticker = ticker
		self.classCode = classCode
		self.timeFrame = timeFrame
		self.dateTime = dateTime
		self.candleStick = candleStick
		self.error = error
	}
}
