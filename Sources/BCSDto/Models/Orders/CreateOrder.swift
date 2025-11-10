//
//  CreateOrder.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

import DecimalMath
import struct Foundation.UUID

public struct CreateOrder: Codable, Sendable {
	// MARK: Properties
	/// Order ID. It is used to track and prevent duplicate order.
	public let clientOrderId: UUID

	/// The direction of the trade. "1" - buy, "2" - sell.
	public let side: SideType

	/// Possible values: "1" – market order, "2" – limit order.
	public let orderType: OrderType

	/// The number of assets in the order, pcs.
	public let orderQuantity: Int

	/// Instrument code.
	public let ticker: String

	/// Exchange or board.
	public let classCode: String

	/// The max price to buy. The min price to sell.
	///
	///		Restrictions:
	///		- The price must be more than zero.
	///		- It can be a fractional number.
	///		- With no more than 8 digits in the fractional part.
	public let price: Decimals?

	// MARK: - Init
	public init(
		clientOrderId: UUID,
		side: SideType,
		orderType: OrderType,
		orderQuantity: Int,
		ticker: String,
		classCode: String,
		price: Decimals?
	) {
		self.clientOrderId = clientOrderId
		self.side = side
		self.orderType = orderType
		self.orderQuantity = orderQuantity
		self.ticker = ticker
		self.classCode = classCode
		self.price = price
	}
}
