//
//  GrantType.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 12.10.2025.
//

/// The method of requesting the token.
public enum GrantType: String, Codable, Sendable {
	case refreshToken = "refresh_token"
}
