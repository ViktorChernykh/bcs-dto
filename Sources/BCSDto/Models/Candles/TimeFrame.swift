//
//  TimeFrame.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

/// Types of candle stick time frames.
public enum TimeFrame: String, Codable, Sendable {
	case M1
	case M5
	case M15
	case M30
	case H1
	case H4
	case D
	case W
	case MN
}
