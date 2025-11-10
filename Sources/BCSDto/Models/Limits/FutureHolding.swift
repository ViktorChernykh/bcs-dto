//
//  FutureHolding.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

import DecimalMath
import struct Foundation.Date

/// Snapshot of a futures position, including instrument identifiers,
/// PnL metrics, margins, position value/net, and key session dates.
public struct FutureHolding: Codable, Sendable {
	// MARK: Properties
	/// Instrument code.
	public let ticker: String?

	/// Exchange  or board.
	public let classCode: String?

	/// Exchange name.
	public let exchange: String // enum

	/// Valuation of planned positions after the next clearing (requires rechecking).
	public let cbplPlanned: Decimals?

	/// Estimation of the size of the variation mark by position.
	public let varMargin: Decimals?

	/// Cost of positions in the futures market.
	public let positionValue: Decimals?

	/// Current net positions.
	public let totalNet: Decimals?

	/// Execution date. Format: ISO 8601.
	public let executionDate: Date?

	/// Total variation margin based on the results of the main clearing, accrued for all positions.
	public let totalVarMargin: Decimals?

	/// Variation margin accrued during clearing.
	public let realVarMargin: Decimals?

	/// Weighted average purchase price of a position.
	public let averagePrice: Decimals?

	/// Type of instrument.
	public let instrumentType: String

	/// Trading session date. Format: ISO 8601.
	public let tradeDate: Date?

	// MARK: - Init
	public init(
		ticker: String?,
		classCode: String?,
		exchange: String,
		cbplPlanned: Decimals?,
		varMargin: Decimals?,
		positionValue: Decimals?,
		totalNet: Decimals?,
		executionDate: Date?,
		totalVarMargin: Decimals?,
		realVarMargin: Decimals?,
		averagePrice: Decimals?,
		instrumentType: String,
		tradeDate: Date?
	) {
		self.ticker = ticker
		self.classCode = classCode
		self.exchange = exchange
		self.cbplPlanned = cbplPlanned
		self.varMargin = varMargin
		self.positionValue = positionValue
		self.totalNet = totalNet
		self.executionDate = executionDate
		self.totalVarMargin = totalVarMargin
		self.realVarMargin = realVarMargin
		self.averagePrice = averagePrice
		self.instrumentType = instrumentType
		self.tradeDate = tradeDate
	}
}
