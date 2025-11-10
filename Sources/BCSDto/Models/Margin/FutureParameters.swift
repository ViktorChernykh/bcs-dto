//
//  FutureParameters.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import DecimalMath

/// An object containing data on futures market instruments on this account.
/// It always comes, even if there are no positions.
public struct FutureParameters: Codable, Sendable {
	// MARK: Properties
	/// The total amount of futures market instruments in RUB (the sum of positions modulo).
	/// If there are no positions, 0 is received.
	public let futuresValue: Decimals

	/// An array of data on derivatives market instruments in the portfolio.
	/// If there are no positions, an empty array is received.
	public let futuresPortfolio: [FuturesPortfolio]
	
	// MARK: - Init
	public init(futuresValue: Decimals, futuresPortfolio: [FuturesPortfolio]) {
		self.futuresValue = futuresValue
		self.futuresPortfolio = futuresPortfolio
	}
}
