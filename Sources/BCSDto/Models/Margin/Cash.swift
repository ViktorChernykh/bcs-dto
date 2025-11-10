//
//  Cash.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import DecimalMath

/// An object containing data about free money.
public struct Cash: Codable, Sendable {
	// MARK: Properties
	/// Currency code.
	public let currency: String?

	/// The amount in the currency.
	public let sum: Decimals?

	// MARK: - Init
	public init(currency: String, sum: Decimals) {
		self.currency = currency
		self.sum = sum
	}
}
