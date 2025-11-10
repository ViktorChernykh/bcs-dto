//
//  API.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 14.06.2025.
//

public enum API {
	// Receive an access token for 24 hours
	public static let access: String = "https://be.broker.ru/trade-api-keycloak/realms/tradeapi/protocol/openid-connect/token"

	// Receive portfolio information through the Portfolio service
	public static let portfolio: String = "https://be.broker.ru/trade-api-bff-portfolio/api/v1/portfolio"
	public static let wsPortfolio: String = "wss://ws.broker.ru/trade-api-bff-portfolio/api/v1/portfolio/ws"

	// Limits, Portfolio
	public static let limits: String = "https://be.broker.ru/trade-api-bff-limit/api/v1/limits"
	public static let wsLimits: String = "wss://ws.broker.ru/trade-api-bff-limit/api/v1/limits/ws"

	// Orders: create, change, cancel, status
	public static let orders: String = "https://be.broker.ru/trade-api-bff-operations/api/v1/orders"

	// Receive status updates on created orders
	public static let wsTransaction: String = "wss://ws.broker.ru/trade-api-bff-operations/api/v1/orders/transaction/ws"

	// Receive information about executed orders
	public static let wsExecution: String = "wss://ws.broker.ru/trade-api-bff-operations/api/v1/orders/execution/ws"

	// MarketData: orderbooks, quotes, trades, last candle
	public static let wsMarketData: String = "wss://ws.broker.ru/trade-api-market-data-connector/api/v1/market-data/ws"

	// Candles
	public static let candles: String = "https://be.broker.ru/trade-api-market-data-connector/api/v1/candles-chart"

	// Find instrument by ticker, by type
	public static let instruments: String = "https://be.broker.ru/trade-api-information-service/api/v1/instruments" // /by-tickers, /by-type

	// Instrument: schedule, trading status
	public static let schedule: String = "https://be.broker.ru/trade-api-information-service/api/v1/trading-schedule" // /daily-schedule, /status

	// Receive portfolio margin indicators
	public static let wsMarginal: String = "wss://ws.broker.ru/trade-api-bff-marginal-indicators/api/v1/marginal-indicators/ws"

	// Receive discounts
	public static let discounts: String = "https://be.broker.ru/trade-api-bff-marginal-indicators/api/v1/instruments-discounts"
}
