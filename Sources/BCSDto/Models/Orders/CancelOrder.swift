//
//  CancelOrder.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

import struct Foundation.UUID

public struct CancelOrder: Codable, Sendable {
	// MARK: Properties
	/// Technical value in case of cancellation.
	public let clientOrderId: UUID

	// MARK: - Init
	public init(clientOrderId: UUID = .init()) {
		self.clientOrderId = clientOrderId
	}
}
