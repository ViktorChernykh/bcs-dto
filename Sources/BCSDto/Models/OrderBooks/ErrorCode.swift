//
//  ErrorCode.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 06.10.2025.
//

public enum ErrorCode: String, Codable, Sendable {
	case Undefined = "UNDEFINED"
	case NoData = "NoData"
	case NotFound = "NotFound"
	case IncorrectJson = "IncorrectJson"
}
