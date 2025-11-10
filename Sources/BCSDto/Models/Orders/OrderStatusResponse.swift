//
//  OrderStatusResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

import struct Foundation.UUID

/// Server response providing the status of an order by its identifier.
public struct OrderStatusResponse: Codable, Sendable {
	// MARK: Properties
	/// Order ID.
	public let originalClientOrderId: String

	///
	public let clientOrderId: UUID

	/// State of order.
	public let data: OrderStatus

	// MARK: - Init
	public init(
		originalClientOrderId: String,
		clientOrderId: UUID,
		data: OrderStatus
	) {
		self.originalClientOrderId = originalClientOrderId
		self.clientOrderId = clientOrderId
		self.data = data
	}
}
