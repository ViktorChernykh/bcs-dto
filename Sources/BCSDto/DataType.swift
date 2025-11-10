//
//  DataType.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

/// Market data types.
public enum DataType: String, Codable, Sendable {
	case orderbook = "0"
	case candles = "1"
	case lasttrades = "2"
	case quotes = "3"
	case other = ""

	public var name: String {
		switch self {
		case .orderbook:
			"orderbook"
		case .candles:
			"candles"
		case .lasttrades:
			"lasttrades"
		case .quotes:
			"quotes"
		default:
			"other"
		}
	}
}
