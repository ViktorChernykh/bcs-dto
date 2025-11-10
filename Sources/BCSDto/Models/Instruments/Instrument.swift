//
//  Instrument.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import DecimalMath
import struct Foundation.Date

/// Represents a financial instrument with trading, identification, and descriptive details.
public struct Instrument: Codable, Sendable {

	/// Instrument code.
	public let ticker: String

	/// Array of boards.
	public let boards: [Board]

	/// Short name.
	public let shortName: String

	/// Instrument ISIN.
	public let isin: String

	/// State registration code.
	public let registrationCode: String

	/// Name of the issuer.
	public let issuerName: String

	/// Instrument type.
	public let instrumentType: String

	/// Currency of instrument.
	public let tradingCurrency: String

	/// Name of instrument.
	public let displayName: String

	/// The name of the instrument (the second part), the series name for the bonds.
	public let displayNameSecond: String

	/// Currency of the price step.
	public let currencyStepPrice: String

	/// Default settle code.
	public let settleCode: String

	/// Nominal value.
	public let faceValue: Decimals

	/// Type (description from the catalog).
	public let type: String

	/// Scale.
	public let scale: Int

	/// Minimum price step.
	public let minimumStep: Decimals

	/// The cost of the price step.
	public let stepPrice: Decimals

	/// Accumulated amount as of the settlement date.
	public let accruedInt: Decimals

	/// cfi code of the instrument.
	public let cfi: String

	///The marker of the instrument for qualified investor.
	public let isQualifiedOnly: Bool

	/// Indicates that a short is available.
	public let isCanShort: Bool

	/// Allowed for an unqualified investor.
	public let availableForUnqualified: Bool

	/// Labeling according to tests according to the current version for today.
	public let qualifiedTestId: Int

	/// Labeling according to tests according to the current version for tomorrow.
	public let qualifiedTestIdTm: Int

	/// Labeling according to tests. Source QUIK If "0" – intended for qualified investors.
	public let complexProduct: Decimals

	/// A marker of the BCS product.
	public let isBcsProduct: Bool

	/// Nominal value currency.
	public let currencyNominal: String

	/// Number of coupons per year.
	public let couponsPerYear: Int

	/// Coupon rate (percentage per year).
	public let couponRate: Decimals

	/// Coupon payment date. Format: ISO 8601 Example: 2024-10-30T09:01:00.000Z
	public let nextCoupon: Date

	/// The name of the underlying asset for the futures contract; if there is none, then the ticker is BA.
	public let baseAsset: String

	/// Lot size.
	public let lotSize: Decimals

	/// Maturity date.
	public let maturityDate: Date?

	/// Link to logo.
	public let logoLink: String

	/// Type of underlying asset for futures.
	public let baseAssetFuture: String

	/// Instrument subtype name.
	public let subType: String

	/// % growth to forecast from the previous session's closing price.
	public let percentTargetCurrent: Decimals

	/// Issuer's business sector.
	public let businessSector: String

	/// Market capitalization.
	public let mktcap: Decimals

	/// P/E Normalized, latest fiscal year.
	public let peNorm: Decimals

	/// Tangible book value per share.
	public let priceTangible: Decimals

	/// EPS growth rate, 5 years.
	public let epsGrowthRate: Decimals

	/// Predicted DPS.
	public let predictedDps: Decimals

	/// Dividend yield is the stated annual dividend divided by the closing price.
	public let dividendYield: Decimals

	/// Price change in % per year.
	public let priceChangeYear: Decimals

	/// Target price.
	public let targetPrice: Decimals

	/// Issuer Business Sector ID.
	public let businessSectorId: Int

	/// Blocked class flag.
	public let isBlocked: Bool

	/// Primary board for the Instrument (p. 3.5).
	public let primaryBoard: String

	/// Boards other than the primary one, but trading is carried out on them (p. 3.5).
	public let secondaryBoards: [String]

	/// Availability indicator for long.
	public let isCanMargin: Bool

	/// Release date. Format: ISO 8601. Example: 2024-10-30
	public let emissionDate: Date

	/// A sign of a replacement bond.
	public let isReplacementBond: Bool

	/// The subtitle of the element is // as a note: "For 2 years".
	public let subTitle: String

	/// The coupon type is in Russian.
	public let couponTypeName: String

	/// Execution type flag.
	public let excludeTypeFlags: Int

	/// List of exclude types.
	public let excludeTypes: [Int]

	/// The level of credit risk of bonds on the "traffic light" scale.
	public let creditRating: String

	/// Bond liquidity rating.
	public let liquidityRating: String

	/// BCS Rating.
	public let bcsScore: Int

	/// Rating color.
	public let bcsScoreColor: String

	/// The instrument's code in NRD.
	public let nrdCode: String

	/// Country of business (country of risk).
	public let businessCountry: String

	/// The country code of doing business.
	public let businessCountryCode: String

	/// Price change in % over six months.
	public let priceChangeHalfYear: Decimals

	/// Price change in % per month.
	public let priceChangeMonth: Decimals

	/// Price change in % since the beginning of the year.
	public let priceChangeEarlyYear: Decimals

	/// Coupon type in Russian.
	public let strike: Decimals

	/// Ticker of the underlying asset.
	public let baseAssetSecuritySecCode: String

	/// The board of the underlying asset.
	public let baseAssetSecurityClassCode: String

	/// The code of the quoted currency in the pair.
	public let firstCurrCode: String

	/// Indication of the availability of amortization repayment on the issue.
	public let amortisedMty: Bool

	/// Settlement currency.
	public let settlementCurrency: String

	/// Settlement date. Format: ISO 8601. Example: 2024-10-30T09:01:00.000Z
	public let settlementDate: Date

	/// Promo index.
	public let promoIdx: Int

	// MARK: - Init
	public init(
		ticker: String,
		boards: [Board],
		shortName: String,
		isin: String,
		registrationCode: String,
		issuerName: String,
		instrumentType: String,
		tradingCurrency: String,
		displayName: String,
		displayNameSecond: String,
		currencyStepPrice: String,
		settleCode: String,
		faceValue: Decimals,
		type: String,
		scale: Int,
		minimumStep: Decimals,
		stepPrice: Decimals,
		accruedInt: Decimals,
		cfi: String,
		isQualifiedOnly: Bool,
		isCanShort: Bool,
		availableForUnqualified: Bool,
		qualifiedTestId: Int,
		qualifiedTestIdTm: Int,
		complexProduct: Decimals,
		isBcsProduct: Bool,
		currencyNominal: String,
		couponsPerYear: Int,
		couponRate: Decimals,
		nextCoupon: Date,
		baseAsset: String,
		lotSize: Decimals,
		maturityDate: Date?,
		logoLink: String,
		baseAssetFuture: String,
		subType: String,
		percentTargetCurrent: Decimals,
		businessSector: String,
		mktcap: Decimals,
		peNorm: Decimals,
		priceTangible: Decimals,
		epsGrowthRate: Decimals,
		predictedDps: Decimals,
		dividendYield: Decimals,
		priceChangeYear: Decimals,
		targetPrice: Decimals,
		businessSectorId: Int,
		isBlocked: Bool,
		primaryBoard: String,
		secondaryBoards: [String],
		isCanMargin: Bool,
		emissionDate: Date,
		isReplacementBond: Bool,
		subTitle: String,
		couponTypeName: String,
		excludeTypeFlags: Int,
		excludeTypes: [Int],
		creditRating: String,
		liquidityRating: String,
		bcsScore: Int,
		bcsScoreColor: String,
		nrdCode: String,
		businessCountry: String,
		businessCountryCode: String,
		priceChangeHalfYear: Decimals,
		priceChangeMonth: Decimals,
		priceChangeEarlyYear: Decimals,
		strike: Decimals,
		baseAssetSecuritySecCode: String,
		baseAssetSecurityClassCode: String,
		firstCurrCode: String,
		amortisedMty: Bool,
		settlementCurrency: String,
		settlementDate: Date,
		promoIdx: Int
	) {
		self.ticker = ticker
		self.boards = boards
		self.shortName = shortName
		self.isin = isin
		self.registrationCode = registrationCode
		self.issuerName = issuerName
		self.instrumentType = instrumentType
		self.tradingCurrency = tradingCurrency
		self.displayName = displayName
		self.displayNameSecond = displayNameSecond
		self.currencyStepPrice = currencyStepPrice
		self.settleCode = settleCode
		self.faceValue = faceValue
		self.type = type
		self.scale = scale
		self.minimumStep = minimumStep
		self.stepPrice = stepPrice
		self.accruedInt = accruedInt
		self.cfi = cfi
		self.isQualifiedOnly = isQualifiedOnly
		self.isCanShort = isCanShort
		self.availableForUnqualified = availableForUnqualified
		self.qualifiedTestId = qualifiedTestId
		self.qualifiedTestIdTm = qualifiedTestIdTm
		self.complexProduct = complexProduct
		self.isBcsProduct = isBcsProduct
		self.currencyNominal = currencyNominal
		self.couponsPerYear = couponsPerYear
		self.couponRate = couponRate
		self.nextCoupon = nextCoupon
		self.baseAsset = baseAsset
		self.lotSize = lotSize
		self.maturityDate = maturityDate
		self.logoLink = logoLink
		self.baseAssetFuture = baseAssetFuture
		self.subType = subType
		self.percentTargetCurrent = percentTargetCurrent
		self.businessSector = businessSector
		self.mktcap = mktcap
		self.peNorm = peNorm
		self.priceTangible = priceTangible
		self.epsGrowthRate = epsGrowthRate
		self.predictedDps = predictedDps
		self.dividendYield = dividendYield
		self.priceChangeYear = priceChangeYear
		self.targetPrice = targetPrice
		self.businessSectorId = businessSectorId
		self.isBlocked = isBlocked
		self.primaryBoard = primaryBoard
		self.secondaryBoards = secondaryBoards
		self.isCanMargin = isCanMargin
		self.emissionDate = emissionDate
		self.isReplacementBond = isReplacementBond
		self.subTitle = subTitle
		self.couponTypeName = couponTypeName
		self.excludeTypeFlags = excludeTypeFlags
		self.excludeTypes = excludeTypes
		self.creditRating = creditRating
		self.liquidityRating = liquidityRating
		self.bcsScore = bcsScore
		self.bcsScoreColor = bcsScoreColor
		self.nrdCode = nrdCode
		self.businessCountry = businessCountry
		self.businessCountryCode = businessCountryCode
		self.priceChangeHalfYear = priceChangeHalfYear
		self.priceChangeMonth = priceChangeMonth
		self.priceChangeEarlyYear = priceChangeEarlyYear
		self.strike = strike
		self.baseAssetSecuritySecCode = baseAssetSecuritySecCode
		self.baseAssetSecurityClassCode = baseAssetSecurityClassCode
		self.firstCurrCode = firstCurrCode
		self.amortisedMty = amortisedMty
		self.settlementCurrency = settlementCurrency
		self.settlementDate = settlementDate
		self.promoIdx = promoIdx
	}
}
