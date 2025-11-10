//
//  Board.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

/// Represents a trading board or market segment on an exchange.
public struct Board: Codable, Sendable {
	// MARK: Properties
	/// Exchange  or board.
	public let classCode: String

	/// Exchange name.
	public let exchange: String

	// MARK: - Init
	public init(classCode: String, exchange: String) {
		self.classCode = classCode
		self.exchange = exchange
	}
}
