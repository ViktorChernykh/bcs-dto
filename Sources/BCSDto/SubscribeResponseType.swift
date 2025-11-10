//
//  SubscribeResponseType.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//


/// Type of data or error.
public enum SubscribeResponseType: String, Codable, Sendable {
	case orderBook = "OrderBook"				// response with data
	case orderBookSuccess = "OrderBookSuccess"	// confirm subscriptions

	case lastTrades = "LastTrades"	// error
	case lastTradesSuccess = "LastTradesSuccess"

	case quotes = "Quotes"
	case quotesSuccess = "QuotesSuccess"

	case candleStick = "CandleStick"
	case candleStickSuccess = "CandleStickSuccess"

	case error = "error"
}
