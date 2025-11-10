//
//  ChangeOrder.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

import DecimalMath
import struct Foundation.UUID

public struct ChangeOrder: Codable, Sendable {
	// MARK: Properties
	/// New order id.
	public let clientOrderId: UUID

	/// 8 decimal places allowed.
	public let price: Decimals

	/// Quantity in the order.
	public let orderQuantity: Int

	/// Exchange  or board.
	public let classCode: String

	// MARK: - Init
	public init(
		clientOrderId: UUID,
		price: Decimals,
		orderQuantity: Int,
		classCode: String
	) {
		self.clientOrderId = clientOrderId
		self.price = price
		self.orderQuantity = orderQuantity
		self.classCode = classCode
	}
}
