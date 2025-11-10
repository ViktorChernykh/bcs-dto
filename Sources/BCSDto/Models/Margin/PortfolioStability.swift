//
//  PortfolioStability.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import DecimalMath

/// An object with general data on the stability and liquidity of the account.
public struct PortfolioStability: Codable, Sendable {
	// MARK: Properties
	/// Is margin trading connected to the account?
	public let isMarginOn: Bool

	/// Debt on money + debt on securities, in RUB (the amount of debt is indicated with a + sign).
	public let borrowedFunds: Decimals

	/// The value of the stability status ID.
	/// Possible values: 0 - 5, where 0 is the forced closing of positions, and 5 is the maximum stability.
	public let stabilityStatusId: Int

	/// The stability status of margin positions at a given time.
	/// It is affected by the number of open margin positions and the current amount of collateral.
	///
	/// 	0 - Forced closing of positions
	/// 	1 - Margin call
	/// 	2 - Low stability
	/// 	3 - Medium stability
	/// 	4 - High stability
	/// 	5 - Maximum stability
	///
	public let stabilityStatusName: String

	/// The amount of the required deposit for the EBS at margin call.
	public let refillSum: Decimals

	// MARK: - Init
	public init(
		isMarginOn: Bool,
		borrowedFunds: Decimals,
		stabilityStatusId: Int,
		stabilityStatusName: String,
		refillSum: Decimals
	) {
		self.isMarginOn = isMarginOn
		self.borrowedFunds = borrowedFunds
		self.stabilityStatusId = stabilityStatusId
		self.stabilityStatusName = stabilityStatusName
		self.refillSum = refillSum
	}
}
