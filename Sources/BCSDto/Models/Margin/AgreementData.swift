//
//  AgreementData.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

/// An object with account data.
public struct AgreementData: Codable, Sendable {
	// MARK: Properties
	/// Brokerage account number.
	public let number: String

	/// Is the account an IIA.
	public let isIia: Bool

	/// Your brokerage account name.
	public let displayName: String?

	/// The subaccount ID from the request.
	public let subaccountId: String

	/// Color coding of brokerage accounts (HEX color code).
	public let color: String?


	// MARK: - Init
	public init(
		number: String,
		isIia: Bool,
		displayName: String?,
		subaccountId: String,
		color: String?
	) {
		self.number = number
		self.isIia = isIia
		self.displayName = displayName
		self.subaccountId = subaccountId
		self.color = color
	}
}
