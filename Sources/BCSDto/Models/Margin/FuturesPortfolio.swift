//
//  FuturesPortfolio.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import DecimalMath

/// An object with data on the futures in the account and the financial result for the entire time / day.
public struct FuturesPortfolio: Codable, Sendable {
	// MARK: Properties
	/// Instrument code.
	public let ticker: String?

	/// Asset trading mode.
	public let board: String?

	/// The amount of the futures position in RUB.
	public let currentValue: Decimals?

	/// The amount of the book value in RUB.
	public let balanceValue: Decimals?

	/// GO futures position in RUB.
	public let futuresCollateral: Decimals?

	/// The long/short discount rate for a futures contract in the portfolio, %.
	public let discount: Decimals?

	/// Name to display.
	public let displayName: String?

	/// Link to logo.
	public let logoLink: String?

	// MARK: - Init
	public init(
		ticker: String,
		board: String,
		currentValue: Decimals,
		balanceValue: Decimals,
		futuresCollateral: Decimals,
		discount: Decimals,
		displayName: String,
		logoLink: String
	) {
		self.ticker = ticker
		self.board = board
		self.currentValue = currentValue
		self.balanceValue = balanceValue
		self.futuresCollateral = futuresCollateral
		self.discount = discount
		self.displayName = displayName
		self.logoLink = logoLink
	}
}
