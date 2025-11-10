//
//  OrderStatusType.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

public enum OrderStatusType: String, Codable, Sendable {
	case ok = "OK"
	case new = "0"
	case partiallyExecuted = "1"
	case executed = "2"
	case canceled = "4"
	case replaced = "5"
	case canceling = "6"
	case rejected = "8"
	case replacing = "9"
	case pendingNew = "10"
}
