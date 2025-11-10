//
//  Discount.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 08.10.2025.
//

import DecimalMath

/// Discount rates applied to a financial instrument for long and short positions.
/// Used to determine margin requirements or risk adjustments for individual instruments in a portfolio.
public struct Discount: Codable, Sendable {
	// MARK: Properties
	/// Instrument code.
	public let ticker: String

	/// Bet on long.
	public let discountLong: Decimals?

	/// Bet on short.
	public let discountShort: Decimals?

	// MARK: - Init
	public init(
		ticker: String,
		discountLong: Decimals,
		discountShort: Decimals
	) {
		self.ticker = ticker
		self.discountLong = discountLong
		self.discountShort = discountShort
	}

}
