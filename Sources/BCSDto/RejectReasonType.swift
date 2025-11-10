//
//  RejectReasonType.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

public enum RejectReasonType: Int, Codable, Sendable {
	case tooLateToCancel = 0
	case unknownOrder = 1
	case brokerOption = 2
	case alreadyInPendingState = 3
}
