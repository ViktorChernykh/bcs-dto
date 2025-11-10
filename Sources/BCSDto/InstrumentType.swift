//
//  InstrumentType.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

/// The type of exchange-traded instruments.
public enum InstrumentType: String, Codable, Sendable {
	case currency
	case stock			// Russian shares
	case foreignStock	// USA shares
	case bonds
	case notes
	case depositaryReceipts
	case euroBonds
	case mutualFunds
	case etf
	case futures
	case options
	case goods
	case indices

	// MARK: - CodingKeys
	public enum CodingKeys: String, CodingKey, Sendable {
		case currency = "CURRENCY"
		case stock = "STOCK"
		case foreignStock = "FOREIGN_STOCK"
		case bonds = "BONDS"
		case notes = "NOTES"
		case depositaryReceipts = "DEPOSITARY_RECEIPTS"
		case euroBonds = "EURO_BONDS"
		case mutualFunds = "MUTUAL_FUNDS"
		case etf = "ETF"
		case futures = "FUTURES"
		case options = "OPTIONS"
		case goods = "GOODS"
		case indices = "INDICES"
	}
}
