//
//  OrderType.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

public enum OrderType: String, Codable, Sendable {
	case market = "1"
	case limit = "2"
}
