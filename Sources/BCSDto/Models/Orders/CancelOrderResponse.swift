//
//  CancelOrderResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

import struct Foundation.UUID

public struct CancelOrderResponse: Codable, Sendable {
	// MARK: Properties
	/// Order ID to cancel.
	public let clientOrderId: UUID

	/// Order status.
	public let status: OrderStatusType

	// MARK: - Init
	public init(clientOrderId: UUID, status: OrderStatusType) {
		self.clientOrderId = clientOrderId
		self.status = status
	}
}
