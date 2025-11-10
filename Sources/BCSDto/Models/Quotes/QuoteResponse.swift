//
//  QuoteResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 06.10.2025.
//

import DecimalMath
import struct Foundation.Date

/// The object of the response indicating the quotes of the instrument.
public struct QuoteResponse: Codable, Sendable {
	// MARK: Properties
	/// Value: quotes.
	public let responseType: SubscribeResponseType

	/// Instrument code.
	public let ticker: String?

	/// Exchange  or board.
	public let classCode: String?

	/// The time of subscription creation.
	public let dateTime: Date?

	/// The type of the quote or instrument.
	public let type: String?

	/// Trading status of security.
	///
	///		2 - Trading Hall, if the status of the trading session in EUR is "Frozen"
	///		17 - Ready to trade if the status of the trading session in EUR is "Open"
	///		18 - Not Available for trading if the status of the trading session in EUR is "Closed"
	///		100 - Closing
	///		101 - Opening
	///		102 - Auction
	///		103 - Closing Auction
	///
	public let securityTradingStatus: Int?

	/// Currency of instrument.
	public let currency: String?

	/// Bid.
	public let bid: Decimals?

	/// Offer.
	public let offer: Decimals?

	/// Open price.
	public let open: Decimals?

	/// Close price.
	public let close: Decimals?

	/// High price.
	public let high: Decimals?

	/// Low price.
	public let low: Decimals?

	/// Theoretical price.
	public let theoreticalPrice: Decimals?

	/// Last price.
	public let last: Decimals?

	/// Buy yield.
	public let butYield: Decimals?

	/// Other yield (additional yield metric, if available).
	public let otherYield: Decimals?

	/// Absolute price change.
	public let change: Decimals?

	/// Relative price change (percentage).
	public let changeRate: Decimals?

	// MARK: - Init
	public init(
		responseType: SubscribeResponseType,
		ticker: String?,
		classCode: String?,
		dateTime: Date?,
		type: String?,
		securityTradingStatus: Int?,
		currency: String?,
		bid: Decimals?,
		offer: Decimals?,
		open: Decimals?,
		close: Decimals?,
		high: Decimals?,
		low: Decimals?,
		theoreticalPrice: Decimals?,
		last: Decimals?,
		butYield: Decimals?,
		otherYield: Decimals?,
		change: Decimals?,
		changeRate: Decimals?
	) {
		self.responseType = responseType
		self.ticker = ticker
		self.classCode = classCode
		self.dateTime = dateTime
		self.type = type
		self.securityTradingStatus = securityTradingStatus
		self.currency = currency
		self.bid = bid
		self.offer = offer
		self.open = open
		self.close = close
		self.high = high
		self.low = low
		self.theoreticalPrice = theoreticalPrice
		self.last = last
		self.butYield = butYield
		self.otherYield = otherYield
		self.change = change
		self.changeRate = changeRate
	}
}
