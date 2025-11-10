//
//  OrderStatus.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

import DecimalMath
import struct Foundation.Date

/// Order status.
public struct OrderStatus: Codable, Sendable {
	// MARK: Properties
	/// MessageType.
//	public let messageType: MessageType

//	public let executionType: String

	/// Order status.
	public let orderStatus: OrderStatusType?

	/// Quantity in the application (pcs.)
	public let orderQuantity: Int?

	/// Executed quantity (pcs.)
	public let executedQuantity: Int?

	/// The quantity in the current trade (pcs.)
	public let lastQuantity: Int?

	/// Remaining quantity (pcs.)
	public let remainedQuantity: Int?

	/// Instrument code.
	public let ticker: String?

	/// Exchange  or board.
	public let classCode: String?

	/// The direction of the trade.
	public let side: SideType?

	/// Possible values: 1 – market order, 2 – limit order.
	public let orderType: OrderType?

	/// The average execution price. For repo/spread transactions: the price of the first part.
	public let averagePrice: Decimals?

	/// Order ID from exchange.
	public let orderId: String?

	/// Trade ID.
	public let executionId: String?

	/// The price of the order. Special cases of Repo/spreads: the price of the first part of the Stop order: 0.
	public let price: Decimals?

	/// Currency.
	public let currency: String?

	/// Client's code.
	public let clientCode: String?

	/// Transaction time in ISO 8601 format Example: 2024-10-30T09:01:00.000Z.
	public let transactionTime: Date?

	/// Date of the transaction (depends on the UseNextSessionDate).
	/// - For the evening FORTS session, the date of the next session.
	/// - Common transactions - execution date Format: ISO 8601.
	public let tradeTime: Date?

	/// Contains:
	/// - Application/order number.
	/// - The number of the replaced application (with OrdStatus="Replaced").
	public let orderNumber: String?

	/// Accumulated coupon income (for bonds).
	public let accruedCoupon: Decimals?

	/// Transaction volume.
	public let executionValue: Decimals?

	/// Commission.
	public let commission: Decimals?

	/// Exchange ID.
	public let securityExchange: String?

	/// Reasons for rejection:
	///
	/// 	0 — Too late to cancel.
	/// 	1 — Unknown order.
	/// 	2 — Broker option.
	/// 	3 — Already in pending state.
	/// 	
	public let rejectReason: RejectReasonType?

	// MARK: - Init
	public init(
//		messageType: MessageType,
//		executionType: String,
		orderStatus: OrderStatusType?,
		orderQuantity: Int?,
		executedQuantity: Int?,
		lastQuantity: Int?,
		remainedQuantity: Int?,
		ticker: String?,
		classCode: String?,
		side: SideType?,
		orderType: OrderType?,
		averagePrice: Decimals?,
		orderId: String?,
		executionId: String?,
		price: Decimals?,
		currency: String?,
		clientCode: String?,
		transactionTime: Date?,
		tradeTime: Date?,
		orderNumber: String?,
		accruedCoupon: Decimals?,
		executionValue: Decimals?,
		commission: Decimals?,
		securityExchange: String?,
		rejectReason: RejectReasonType?
	) {
//		self.messageType = messageType
//		self.executionType = executionType
		self.orderStatus = orderStatus
		self.orderQuantity = orderQuantity
		self.executedQuantity = executedQuantity
		self.lastQuantity = lastQuantity
		self.remainedQuantity = remainedQuantity
		self.ticker = ticker
		self.classCode = classCode
		self.side = side
		self.orderType = orderType
		self.averagePrice = averagePrice
		self.orderId = orderId
		self.executionId = executionId
		self.price = price
		self.currency = currency
		self.clientCode = clientCode
		self.transactionTime = transactionTime
		self.tradeTime = tradeTime
		self.orderNumber = orderNumber
		self.accruedCoupon = accruedCoupon
		self.executionValue = executionValue
		self.commission = commission
		self.securityExchange = securityExchange
		self.rejectReason = rejectReason
	}
}
