//
//  DepoLimit.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 30.09.2025.
//

import DecimalMath
import struct Foundation.Date

/// Data on stocks, bonds, and currencies in your portfolio.
public struct DepoLimit: Codable, Sendable {
	// MARK: Properties
	/// Instrument code.
	public let ticker: String?

	/// Exchange  or board.
	public let classCode: String?

	/// Exchange.
	public let exchange: String // enum

	/// The weighted average price of opening a position.
	public let averagePrice: Decimals?

	/// The number of this asset in your portfolio in units.
	public let quantity: Quantity?

	/// The number of this asset in your portfolio in lots.
	public let quantityBatch: Quantity?

	/// Type of instrument (for example, stock, bond).
	public let instrumentType: String

	/// Update time Data time Format: ISO 8601.
	public let loadDate: Date?

	/// The amount of money in active orders for the purchase of this instrument.
	public let lockedBuyValue: Decimals?

	/// The amount of money in active orders for the sell of this instrument.
	public let lockedSellValue: Decimals?

	// MARK: - Init
	public init(
		ticker: String?,
		classCode: String?,
		exchange: String,
		averagePrice: Decimals?,
		quantity: Quantity?,
		quantityBatch: Quantity?,
		instrumentType: String,
		loadDate: Date?,
		lockedBuyValue: Decimals?,
		lockedSellValue: Decimals?
	) {
		self.ticker = ticker
		self.classCode = classCode
		self.exchange = exchange
		self.averagePrice = averagePrice
		self.quantity = quantity
		self.quantityBatch = quantityBatch
		self.instrumentType = instrumentType
		self.loadDate = loadDate
		self.lockedBuyValue = lockedBuyValue
		self.lockedSellValue = lockedSellValue
	}
}
