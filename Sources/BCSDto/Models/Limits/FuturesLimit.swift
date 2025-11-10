//
//  FuturesLimit.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

import DecimalMath
import struct Foundation.Date

/// Futures trading limits and margins overview for a currency on an exchange,
/// including CBPL, reserved guarantees, premiums, and variation margins.
public struct FuturesLimit: Codable, Sendable {
	// MARK: Properties
	/// Currency code
	public let currencyCode: String?

	/// Exchange name.
	public let exchange: String // enum

	/// Variation margin for the current day.
	public let accruedInt: Decimals?

	/// Current limit of open positions.
	public let cbpl: Decimals?

	/// Positions after the last clearing.
	public let cbplUsed: Decimals?

	/// Valuation of planned positions after the next clearing.
	public let cbplPlaned: Decimals?

	/// The amount of the guarantee reserved for client requests.
	public let cbplusedForOrders: Decimals?

	/// The amount of the guarantee reserved for open client applications.
	public let cbplusedForPositions: Decimals?

	/// Premiums on options.
	public let optionsPremium: Decimals?

	/// Instrument type (constant = "money").
	public let instrumentType: String	// constant = "money"

	/// Upload date.​ Format: ISO 8601.
	public let loadDate: Date?

	/// Estimating the size of the variation margin by position.
	public let varMargin: Decimals?

	/// Variation margin accrued during clearing.
	public let realVarMargin: Decimals?

	// MARK: - Init
	public init(
		currencyCode: String?,
		exchange: String,
		accruedInt: Decimals?,
		cbpl: Decimals?,
		cbplUsed: Decimals?,
		cbplPlaned: Decimals?,
		cbplusedForOrders: Decimals?,
		cbplusedForPositions: Decimals?,
		optionsPremium: Decimals?,
		instrumentType: String,
		loadDate: Date?,
		varMargin: Decimals?,
		realVarMargin: Decimals?
	) {
		self.currencyCode = currencyCode
		self.exchange = exchange
		self.accruedInt = accruedInt
		self.cbpl = cbpl
		self.cbplUsed = cbplUsed
		self.cbplPlaned = cbplPlaned
		self.cbplusedForOrders = cbplusedForOrders
		self.cbplusedForPositions = cbplusedForPositions
		self.optionsPremium = optionsPremium
		self.instrumentType = instrumentType
		self.loadDate = loadDate
		self.varMargin = varMargin
		self.realVarMargin = realVarMargin
	}
}
