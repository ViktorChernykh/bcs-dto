//
//  MarginSecurities.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import DecimalMath

/// An object containing data on margin positions in the portfolio.
public struct MarginSecurities: Codable, Sendable {
	// MARK: Properties
	/// The total amount of debt on securities converted to RUB (debt balance with a - sign).
	public let totalMoneySecurity: Decimals?

	/// A list of all margin positions in the portfolio.
	public let marginBySecurity: [MarginBySecurity]

	// MARK: - Init
	public init(
		totalMoneySecurity: Decimals,
		marginBySecurity: [MarginBySecurity]
	) {
		self.totalMoneySecurity = totalMoneySecurity
		self.marginBySecurity = marginBySecurity
	}
}
