//
//  MarginParameters.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 07.10.2025.
//

import DecimalMath

public struct MarginParameters: Codable, Sendable {
	// MARK: Properties
	/// The cost of margin assets converted to RUB. If it is missing, it returns 0.
	public let marginValue: Decimals

	/// Warranty positions.
	public let collateral: Decimals

	/// At what cost of the margin portfolio will the margin call be, in RUB.
	public let marginCall: Decimals

	/// At what cost will the margin portfolio be forcibly closed, in RUB.
	public let forcedClosure: Decimals

	// MARK: - Init
	public init(
		marginValue: Decimals,
		collateral: Decimals,
		marginCall: Decimals,
		forcedClosure: Decimals
	) {
		self.marginValue = marginValue
		self.collateral = collateral
		self.marginCall = marginCall
		self.forcedClosure = forcedClosure
	}
}
