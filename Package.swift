// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "bcs-dto",
    platforms: [
        .macOS(.v14),
		.iOS(.v17),
    ],
    products: [
        .library(name: "BCSDto", targets: ["BCSDto"]),
    ],
    dependencies: [
		.package(url: "https://github.com/ViktorChernykh/decimal-math.git", from: "0.7.0"),
	],
    targets: [
        .target(name: "BCSDto", dependencies: [
			.product(name: "DecimalMath", package: "decimal-math"),
		]),
    ]
)

/// Swift compiler settings for Release configuration.
var swiftSettings: [SwiftSetting] { [
	// "ExistentialAny" is an option that makes the use of the `any` keyword for existential types `required`
	.enableUpcomingFeature("ExistentialAny")
] }
