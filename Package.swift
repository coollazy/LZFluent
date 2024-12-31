// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LZFluent",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "LZFluent",
            targets: [
                "LZFluent"
            ]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "LZFluent",
            dependencies: []
        ),
        .testTarget(
            name: "LZFluentTests",
            dependencies: [
                "LZFluent"
            ]
        ),
    ]
)
