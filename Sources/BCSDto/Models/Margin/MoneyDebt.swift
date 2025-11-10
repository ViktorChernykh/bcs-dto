//
//  MoneyDebt.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import DecimalMath

/// An object containing data on the size of the margin position in money (as a result of opening long positions).
public struct MoneyDebt: Codable, Sendable {
	// MARK: Properties
	/// Total amount of debt in RUB.
	/// If there is no debt, 0 is received (debt balance with a `-` sign).
	public let totalMoneyDebt: Decimals

	/// An array of data on the amount of margin positions for each currency.
	public let debtByCurrency: [Cash]

	// MARK: - Init
	public init(totalMoneyDebt: Decimals, debtByCurrency: [Cash]) {
		self.totalMoneyDebt = totalMoneyDebt
		self.debtByCurrency = debtByCurrency
	}
}
