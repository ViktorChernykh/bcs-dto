//
//  MoneyLimit.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

import DecimalMath
import struct Foundation.Date

/// Cash balance limits for a currency on an exchange,
/// including locked funds, average price, quantity, and timestamps.
public struct MoneyLimit: Codable, Sendable {
	// MARK: Properties
	/// Exchange name.
	public let exchange: String // enum

	/// Currency code.
	public let currencyCode: String?

	/// The amount of money locked in active orders.
	public let locked: Decimals?

	/// The weighted average price of opening a position.
	public let averagePrice: Decimals?

	/// Instrument type (constant = "money").
	public let instrumentType: String

	/// The type of limit in units.
	public let quantity: Quantity?

	/// Upload date. Format: ISO 8601.
	public let loadDate: Date?

	// MARK: - Init
	public init(
		exchange: String,
		currencyCode: String?,
		locked: Decimals?,
		averagePrice: Decimals?,
		instrumentType: String,
		quantity: Quantity?,
		loadDate: Date?
	) {
		self.exchange = exchange
		self.currencyCode = currencyCode
		self.locked = locked
		self.averagePrice = averagePrice
		self.instrumentType = instrumentType
		self.quantity = quantity
		self.loadDate = loadDate
	}
}
