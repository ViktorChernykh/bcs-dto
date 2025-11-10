//
//  PortfolioCurrentValue.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import DecimalMath

/// An object with data on the value of assets in the account and the financial result for the entire time / day.
public struct PortfolioCurrentValue: Codable, Sendable {
	// MARK: Properties
	/// Current portfolio value (double) in RUB.
	public let currentValueRub: Decimals

	/// Daily portfolio change in RUB.
	public let dailyPortfolioChangeRub: Decimals

	/// Daily portfolio change in %.
	public let dailyPortfolioChangePerc: Decimals

	/// All-time portfolio changes in RUB.
	public let totalPortfolioChangeRub: Decimals

	/// Portfolio change in % over the entire period.
	public let totalPortfolioChangePerc: Decimals

	/// The total amount of available funds in RUB secured by margin assets.
	public let collateralAvailable: Decimals

	/// Variation margin.
	public let varMargin: Decimals

	// MARK: - Init
	public init(
		currentValueRub: Decimals,
		dailyPortfolioChangeRub: Decimals,
		dailyPortfolioChangePerc: Decimals,
		totalPortfolioChangeRub: Decimals,
		totalPortfolioChangePerc: Decimals,
		collateralAvailable: Decimals,
		varMargin: Decimals
	) {
		self.currentValueRub = currentValueRub
		self.dailyPortfolioChangeRub = dailyPortfolioChangeRub
		self.dailyPortfolioChangePerc = dailyPortfolioChangePerc
		self.totalPortfolioChangeRub = totalPortfolioChangeRub
		self.totalPortfolioChangePerc = totalPortfolioChangePerc
		self.collateralAvailable = collateralAvailable
		self.varMargin = varMargin
	}
}
