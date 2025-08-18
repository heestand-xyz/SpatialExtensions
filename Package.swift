// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "SpatialExtensions",
    platforms: [
        .iOS(.v16),
        .tvOS(.v16),
        .macOS(.v13),
        .watchOS(.v9),
        .visionOS(.v1),
    ],
    products: [
        .library(
            name: "SpatialExtensions",
            targets: ["SpatialExtensions"]),
    ],
    targets: [
        .target(
            name: "SpatialExtensions"),
        .testTarget(
            name: "SpatialExtensionsTests",
            dependencies: ["SpatialExtensions"]),
    ]
)
