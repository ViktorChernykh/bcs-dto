//
//  OrderBookSubscribeResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

import DecimalMath
import struct Foundation.Date

/// The response object with orderbook.
public struct OrderBookSubscribeResponse: Codable, Sendable {

	// MARK: Properties
	/// Type of response.
	public let responseType: SubscribeResponseType

	/// The type of message. Subscribe = 0,  Unsubscribe = 1.
	public let subscribeType: SubscribeType?

	/// Depth of orderbook range 1...20. Default = 20.
	public let depth: Int?

	/// The time of subscription creation. The ISO 8601 format. Example: 2024-10-30T09:01:00.000Z.
	public let dateTime: Date?

	/// Instrument code.
	public let ticker: String?

	/// Exchange  or board.
	public let classCode: String?

	/// Total volume of purchase offers.
	public let bidVolume: Decimals?

	/// Total volume of offers for sale.
	public let askVolume: Decimals?

	/// Purchase offers. The field must be filled in in case of an error.
	public let bids: [Bid]?

	/// Sale offers.
	public let asks: [Ask]?

	/// Error container.
	public let error: ErrorType?

	// MARK: - Init
	public init(
		responseType: SubscribeResponseType,
		subscribeType: SubscribeType?,
		depth: Int?,
		dateTime: Date?,
		ticker: String?,
		classCode: String?,
		bidVolume: Decimals?,
		askVolume: Decimals?,
		bids: [Bid]?,
		asks: [Ask]?,
		error: ErrorType?
	) {
		self.responseType = responseType
		self.subscribeType = subscribeType
		self.depth = depth
		self.dateTime = dateTime
		self.ticker = ticker
		self.classCode = classCode
		self.bidVolume = bidVolume
		self.askVolume = askVolume
		self.bids = bids
		self.asks = asks
		self.error = error
	}
}
