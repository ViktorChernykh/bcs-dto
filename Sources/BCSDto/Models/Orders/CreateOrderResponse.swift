//
//  CreateOrderResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

import struct Foundation.UUID

/// The object of the response with the result of the order creating.
public struct CreateOrderResponse: Codable, Sendable {
	// MARK: Properties
	/// Order ID to create.
	public let clientOrderId: String

	/// Order status.
	public let status: OrderStatusType

	// MARK: - Init
	public init(clientOrderId: String, status: OrderStatusType) {
		self.clientOrderId = clientOrderId
		self.status = status
	}
}
