//
//  ChangeOrderResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

import struct Foundation.UUID

public struct ChangeOrderResponse: Codable, Sendable {
	// MARK: Properties
	/// ID for a new order.
	public let clientOrderId: UUID

	/// Order status.
	public let status: OrderStatusType

	// MARK: - Init
	public init(clientOrderId: UUID, status: OrderStatusType) {
		self.clientOrderId = clientOrderId
		self.status = status
	}
}
