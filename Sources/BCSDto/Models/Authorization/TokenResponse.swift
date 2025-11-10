//
//  TokenResponse.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 12.06.2025.
//

import Foundation

/// Returns a token with the requested rights.
public struct TokenResponse: Codable, Sendable {
	// MARK: Properties

	/// Access token with the requested rights.
	public let accessToken: String

	/// Token lifetime in seconds (total 24 hours).
	public let expiresIn: Int

	/// Refresh token lifetime (total 90 days).
	public let refreshExpiresIn: Int

	/// The token update parameter. It is used to update the `access/refresh` token pair.
	public let refreshToken: String

	/// The type of token that determines how it is used. Always takes the value `bearer`.
	public let tokenType: String

	/// The date on which the system tokens will become effective (according to UNIX time).
	/// By default, 0 (i.e. immediately).
	public let notBeforePolicy: Int

	/// Session GUID.
	public let sessionState: UUID

	/// Access rights according to the token provided in the request.
	public let scope: String

	// MARK: - CodingKeys
	public enum CodingKeys: String, CodingKey, Sendable {
		case accessToken = "access_token"
		case expiresIn = "expires_in"
		case refreshExpiresIn = "refresh_expires_in"
		case refreshToken = "refresh_token"
		case tokenType = "token_type"
		case notBeforePolicy = "not-before-policy"
		case sessionState = "session_state"
		case scope
	}

	// MARK: - Init
	public init(
		accessToken: String,
		expiresIn: Int,
		refreshExpiresIn: Int,
		refreshToken: String,
		tokenType: String,
		notBeforePolicy: Int,
		sessionState: UUID,
		scope: String
	) {
		self.accessToken = accessToken
		self.expiresIn = expiresIn
		self.refreshExpiresIn = refreshExpiresIn
		self.refreshToken = refreshToken
		self.tokenType = tokenType
		self.notBeforePolicy = notBeforePolicy
		self.sessionState = sessionState
		self.scope = scope
	}
}
