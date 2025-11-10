//
//  TradeResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 06.10.2025.
//

import DecimalMath
import struct Foundation.Date

public struct TradeResponse: Codable, Sendable {
	// MARK: Properties
	/// Type of data. LastTrades or LastTradesSuccess.
	public let responseType: SubscribeResponseType

	/// The type of message. Subscribe = 0,  Unsubscribe = 1.
	public let subscribeType: SubscribeType?

	/// Instrument code.
	public let ticker: String?

	/// Exchange  or board.
	public let classCode: String?

	/// Subscription creation time (ISO 8601, example: 2024-10-30T09:01:00.000Z).
	public let dateTime: Date?

	/// The direction of the trade.
	public let side: SideType?

	/// Trade price.
	public let price: Decimals?

	/// Volume of trade Int.
	public let volume: Decimals?

	/// Quantity of lots in trade.
	public let quantity: Int?

	/// Error container.
	public let error: ErrorType?

	// MARK: - Init
	public init(
		responseType: SubscribeResponseType,
		subscribeType: SubscribeType,
		ticker: String?,
		classCode: String?,
		dateTime: Date?,
		side: SideType?,
		price: Decimals?,
		volume: Decimals?,
		quantity: Int?,
		error: ErrorType?
	) {
		self.responseType = responseType
		self.subscribeType = subscribeType
		self.ticker = ticker
		self.classCode = classCode
		self.dateTime = dateTime
		self.side = side
		self.price = price
		self.volume = volume
		self.quantity = quantity
		self.error = error
	}
}
