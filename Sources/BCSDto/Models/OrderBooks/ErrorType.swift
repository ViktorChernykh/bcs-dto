//
//  ErrorType.swift
//  bcs-kit
//
//  Created by Victor Chernykh on 06.10.2025.
//

public struct ErrorType: Codable, Sendable {
	// MARK: Properties
	/// Error text.
	public let message: String

	/// Error code:
	///
	/// 	0 - UNDEFINED.
	/// 	1 - NO_DATA.
	/// 	2 - NOT_FOUND. No data from the source (FixAdapter down).
	/// 	3 - INVALID_JSON. The tool was not found.
	/// 	
	public let code: String

	// MARK: - Init
	public init(message: String, code: String) {
		self.message = message
		self.code = code
	}
}
