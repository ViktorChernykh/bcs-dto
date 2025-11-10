//
//  ClientIdType.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

/// Specifies which client identifier to use when requesting an access token:
/// - `.read` maps to the read-only client ("trade-api-read") for data access,
/// - `.write` maps to the trading client ("trade-api-write") for placing/changing/canceling orders.
/// Used by `Token` to populate the `client_id` field for the OAuth token request.
public enum ClientIdType: String, Codable, Sendable {
	case read = "trade-api-read"
	case write = "trade-api-write"
}
