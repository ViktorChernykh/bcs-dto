//
//  MarginBySecurity.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import DecimalMath

public struct MarginBySecurity: Codable, Sendable {
	// MARK: Properties
	/// Instrument code.
	public let ticker: String?

	/// Asset trading mode.
	public let board: String?

	/// Name to display.
	public let displayName: String?

	/// Link to logo.
	public let logoLink: String?

	/// Number of assets in the short, pcs.
	public let quantity: Decimals?

	/// The current value in the trading currency of the instrument.
	public let currentValue: Decimals?

	/// In this currency, we display the position in the short.
	public let currency: String?

	/// Long/short discount rate for liquid paper in the portfolio, %.
	public let discount: Decimals?

	// MARK: - Init
	public init(
		ticker: String,
		board: String,
		displayName: String,
		logoLink: String,
		quantity: Decimals,
		currentValue: Decimals,
		currency: String,
		discount: Decimals
	) {
		self.ticker = ticker
		self.board = board
		self.displayName = displayName
		self.logoLink = logoLink
		self.quantity = quantity
		self.currentValue = currentValue
		self.currency = currency
		self.discount = discount
	}
}
