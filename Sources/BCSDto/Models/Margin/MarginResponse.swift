//
//  MarginResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

public struct MarginResponse: Codable, Sendable {
	// MARK: Properties
	/// An object with account data.
	public let agreementData: AgreementData?

	/// An object with data on the value of assets in the account and the financial result for the entire time / day.
	public let portfolioCurrentValue: PortfolioCurrentValue?

	/// An object with general data on the stability and liquidity of the account.
	public let portfolioStability: PortfolioStability?

	/// An object with general data on the stability and liquidity of a dedicated FORTS account.
	public let fortsStability: FortsStability?

	/// An object containing data on the state of the margin portfolio.
	/// It always comes, even in the absence of margin positions.
	public let marginParameters: MarginParameters?

	/// An object containing data about free money.
	public let cashByCurrency: [Cash]?

	/// An object containing data on the size of the margin position in money (as a result of opening long positions).
	public let moneyDebt: MoneyDebt?

	/// An object containing data on margin positions in the portfolio.
	public let marginSecurities: MarginSecurities?

	/// An object containing data on futures market instruments on this account.
	/// It always comes, even if there are no positions.
	public let futureParameters: FutureParameters?

	// MARK: - Init
	public init(
		agreementData: AgreementData?,
		portfolioCurrentValue: PortfolioCurrentValue?,
		portfolioStability: PortfolioStability?,
		fortsStability: FortsStability?,
		marginParameters: MarginParameters?,
		cashByCurrency: [Cash]?,
		moneyDebt: MoneyDebt?,
		marginSecurities: MarginSecurities?,
		futureParameters: FutureParameters?
	) {
		self.agreementData = agreementData
		self.portfolioCurrentValue = portfolioCurrentValue
		self.portfolioStability = portfolioStability
		self.fortsStability = fortsStability
		self.marginParameters = marginParameters
		self.cashByCurrency = cashByCurrency
		self.moneyDebt = moneyDebt
		self.marginSecurities = marginSecurities
		self.futureParameters = futureParameters
	}
}
