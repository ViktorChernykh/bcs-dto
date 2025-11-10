//
//  Quantity.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 01.10.2025.
//

import DecimalMath

/// Quantity of instrument.
public struct Quantity: Codable, Sendable {
	// MARK: Properties
	/// Settlement mode — the period during which the settlement of the transaction will take place.
	public let type: String		// T0, T1, T2, T365

	/// The quantity of assets in units, taking into account the value of T.
	public let value: Decimals

	// MARK: - Init
	public init(type: String, value: Decimals) {
		self.type = type
		self.value = value
	}
}
