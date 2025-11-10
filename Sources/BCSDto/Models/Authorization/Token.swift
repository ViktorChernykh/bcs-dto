//
//  Token.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 12.06.2025.
//

/// Request for retrieving trade history of an account.
public struct Token: Codable, Sendable {
	// MARK: Properties

	/// The client's ID. Token for reading - "trade-api-read", for trading - "trade-api-write".
	public let clientId: ClientIdType

	/// Value of refresh token.
	public let refreshToken: String

	/// Token request method. Need specify "refresh_token".
	public let grantType: GrantType

	// MARK: - CodingKeys
	public enum CodingKeys: String, CodingKey, Sendable {
		case clientId = "client_id"
		case refreshToken = "refresh_token"
		case grantType = "grant_type"
	}

	// MARK: - Init
	public init(
		clientId: ClientIdType,
		refreshToken: String,
		grantType: GrantType = .refreshToken
	) {
		self.clientId = clientId
		self.refreshToken = refreshToken
		self.grantType = grantType
	}
}
