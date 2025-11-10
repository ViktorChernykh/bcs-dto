//
//  Bid.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 06.10.2025.
//

import DecimalMath

public typealias Ask = Bid

/// The bid or ask line in the order book.
public struct Bid: Codable, Sendable {
	// MARK: Properties
	/// Price (for bonds - yield). Prices are sorted from the highest to the lowest.
	public let price: Decimals

	/// Quantity of bid / ask.
	public let quantity: Int

	// MARK: - Init
	public init(price: Decimals, quantity: Int) {
		self.price = price
		self.quantity = quantity
	}
}
