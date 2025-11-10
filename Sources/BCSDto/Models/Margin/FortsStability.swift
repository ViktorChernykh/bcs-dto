//
//  FortsStability.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import DecimalMath

/// An object with general data on the stability and liquidity of a dedicated FORTS account.
public struct FortsStability: Codable, Sendable {
	// MARK: Properties
	/// All the money locked under GO (Warranty Provision), + free money variation margin on the account, in RUB.
	public let ownFunds: Decimals

	/// Free money on FORTS.
	public let freeCash: Decimals

	/// The value of the stability status ID.
	public let stabilityStatusId: Int

	/// Name of the status.
	public let stabilityStatusName: String

	/// The amount of the required deposit for the FORTS account at margin call.
	public let refillSum: Decimals

	/// When the amount is reached, there will be a margin call on the futures market with a separate EBS.
	public let fortsMarginCall: Decimals

	/// When the amount is reached, there will be a forced closure of the futures market with a separate EBS.
	public let fortsForcedClosure: Decimals

	/// Your level of risk. The higher the level, the more assets can be borrowed from the broker with the same level of collateral.
	///	Possible values:
	///
	///		0 — the risk level is not specified
	///		1 — КНУР (client with an initial level of risk)
	///		2 — КСУР (client with a standard level of risk)
	///		3 — КПУР (client with an increased level of risk)
	///		4 — КОУР (client with a special level of risk)
	///
	public let riskLevel: Int?

	// MARK: - Init
	public init(
		ownFunds: Decimals,
		freeCash: Decimals,
		stabilityStatusId: Int,
		stabilityStatusName: String,
		refillSum: Decimals,
		fortsMarginCall: Decimals,
		fortsForcedClosure: Decimals,
		riskLevel: Int
	) {
		self.ownFunds = ownFunds
		self.freeCash = freeCash
		self.stabilityStatusId = stabilityStatusId
		self.stabilityStatusName = stabilityStatusName
		self.refillSum = refillSum
		self.fortsMarginCall = fortsMarginCall
		self.fortsForcedClosure = fortsForcedClosure
		self.riskLevel = riskLevel
	}
}
