//
//  Position.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 30.09.2025.
//

import DecimalMath
import Foundation

/// Represents an open position in a trading account, including quantities, prices, P/L, and instrument details.
public struct Position: Codable, Sendable {

	nonisolated(unsafe)
	private static let iso8601DateFormatter: ISO8601DateFormatter = .init()

	// MARK: Properties
	/// Position type.
	public let type: String

	/// Sub account ID.
	public let subAccountId: UUID

	/// The ID of the master agreement (matches the number of the brokerage account).
	public let agreementId: UUID

	/// Trading account.
	public let account: String

	/// Exchange.
	public let exchange: String

	/// Instrument code.
	public let ticker: String

	/// Name of the instrument.
	public let displayName: String

	/// Ticker of the underlying asset.
	public let baseAssetTicker: String

	/// Price currency.
	public let currency: String

	/// Expiration date.
	public let expireDate: String

	public var expDate: Date? {
		Self.iso8601DateFormatter.date(from: expireDate)
	}

	/// Top-level tool type.
	public let upperType: String

	/// Tool type.
	public let instrumentType: String

	/// The type of limit (T0/T1/T2/T365).
	public let term: String

	/// Quantity (pcs.)
	public let quantity: Decimals

	/// Number of assets occupied by active applications or Collateral.
	public let locked: Decimals

	/// Balance price (position opening price) in the currency of the price.
	public let balancePrice: Decimals

	/// Current price.
	public let currentPrice: Decimals

	/// Book value (position opening price) in the currency of the price.
	public let balanceValue: Decimals

	/// Balance value in rubles.
	public let balanceValueRub: Decimals

	/// Balance value in dollars.
	public let balanceValueUsd: Decimals

	/// Balance value in euros.
	public let balanceValueEur: Decimals

	/// Current value in the currency of the price.
	public let currentValue: Decimals

	/// Current value in rubles.
	public let currentValueRub: Decimals

	/// Current value in dollars.
	public let currentValueUsd: Decimals

	/// Current value in euros.
	public let currentValueEur: Decimals

	/// Price change since the position was opened (unrealized P/L).
	public let unrealizedPL: Decimals

	/// Price change since the position was opened (unrealized P/L), %.
	public let unrealizedPercentPL: Decimals

	/// Daily price change since the position was opened.
	public let dailyPL: Decimals

	/// Daily price change since the position was opened, %.
	public let dailyPercentPL: Decimals

	/// Share in the portfolio, % (of the ruble value of the portfolio).
	public let portfolioShare: Decimals

	/// Number of decimal places.
	public let scale: Int

	/// Minimum price step.
	public let minimumStep: Decimals

	/// Asset trading mode.
	public let board: String

	/// Unit of price.
	public let priceUnit: String

	/// Nominal value (for bonds).
	public let faceValue: Decimals

	/// Accumulated coupon income (for bonds).
	public let accruedIncome: Decimals

	/// Is the trading account blocked.
	public let isBlockedTradeAccount: Bool

	/// Employed under Collateral on futures
	public let lockedForFutures: Decimals

	/// Reserved for Futures Collateral.
	public let isBlocked: Bool

	/// Money borrowed in active applications or as collateral.
	public let ratioQuantity: Decimals

	/// Link to logo. (can be an empty string).
	public let logoLink: String

	// MARK: - Init
	public init(
		type: String,
		subAccountId: UUID,
		agreementId: UUID,
		account: String,
		exchange: String,
		ticker: String,
		displayName: String,
		baseAssetTicker: String,
		currency: String,
		expireDate: String,
		upperType: String,
		instrumentType: String,
		term: String,
		quantity: Decimals,
		locked: Decimals,
		balancePrice: Decimals,
		currentPrice: Decimals,
		balanceValue: Decimals,
		balanceValueRub: Decimals,
		balanceValueUsd: Decimals,
		balanceValueEur: Decimals,
		currentValue: Decimals,
		currentValueRub: Decimals,
		currentValueUsd: Decimals,
		currentValueEur: Decimals,
		unrealizedPL: Decimals,
		unrealizedPercentPL: Decimals,
		dailyPL: Decimals,
		dailyPercentPL: Decimals,
		portfolioShare: Decimals,
		scale: Int,
		minimumStep: Decimals,
		board: String,
		priceUnit: String,
		faceValue: Decimals,
		accruedIncome: Decimals,
		isBlockedTradeAccount: Bool,
		lockedForFutures: Decimals,
		isBlocked: Bool,
		ratioQuantity: Decimals,
		logoLink: String
	) {
		self.type = type
		self.subAccountId = subAccountId
		self.agreementId = agreementId
		self.account = account
		self.exchange = exchange
		self.ticker = ticker
		self.displayName = displayName
		self.baseAssetTicker = baseAssetTicker
		self.currency = currency
		self.expireDate = expireDate
		self.upperType = upperType
		self.instrumentType = instrumentType
		self.term = term
		self.quantity = quantity
		self.locked = locked
		self.balancePrice = balancePrice
		self.currentPrice = currentPrice
		self.balanceValue = balanceValue
		self.balanceValueRub = balanceValueRub
		self.balanceValueUsd = balanceValueUsd
		self.balanceValueEur = balanceValueEur
		self.currentValue = currentValue
		self.currentValueRub = currentValueRub
		self.currentValueUsd = currentValueUsd
		self.currentValueEur = currentValueEur
		self.unrealizedPL = unrealizedPL
		self.unrealizedPercentPL = unrealizedPercentPL
		self.dailyPL = dailyPL
		self.dailyPercentPL = dailyPercentPL
		self.portfolioShare = portfolioShare
		self.scale = scale
		self.minimumStep = minimumStep
		self.board = board
		self.priceUnit = priceUnit
		self.faceValue = faceValue
		self.accruedIncome = accruedIncome
		self.isBlockedTradeAccount = isBlockedTradeAccount
		self.lockedForFutures = lockedForFutures
		self.isBlocked = isBlocked
		self.ratioQuantity = ratioQuantity
		self.logoLink = logoLink
	}
}
