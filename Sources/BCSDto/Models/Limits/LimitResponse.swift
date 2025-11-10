//
//  LimitResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

/// Aggregated client limits snapshot combining deposit, futures holding, cash, and futures margin limits.
public struct LimitResponse: Codable, Sendable {
	// MARK: Properties
	/// Data on stocks, bonds, and currencies in your portfolio.
	public let depoLimit: [DepoLimit]

	/// Snapshot of a futures position.
	public let futureHolding: [FutureHolding]

	/// Cash balance limits for a currency on an exchange.
	public let moneyLimits: [MoneyLimit]

	/// Futures trading limits and margins overview for a currency.
	public let futuresLimits: [FuturesLimit]

	// MARK: - Init
	public init(
		depoLimit: [DepoLimit] = [],
		futureHolding: [FutureHolding] = [],
		moneyLimits: [MoneyLimit] = [],
		futuresLimits: [FuturesLimit] = []
	) {
		self.depoLimit = depoLimit
		self.futureHolding = futureHolding
		self.moneyLimits = moneyLimits
		self.futuresLimits = futuresLimits
	}
}
