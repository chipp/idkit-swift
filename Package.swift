// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 4.0.0-dev

import PackageDescription

let package = Package(
    name: "IDKit",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "IDKit",
            targets: ["IDKit"])
    ],
    targets: [
        .binaryTarget(
            name: "idkitFFI",
            url: "https://github.com/chipp/idkit-swift/releases/download/untagged-39e9510788e0007dd8bc/IDKitFFI.xcframework.zip",
            checksum: "1019031b801ebdd6c1439e80e3d7ba5eaecd663bba29a2aed044eed5402d846e"
        ),
        .target(
            name: "IDKit",
            dependencies: [
                "idkitFFI",
            ],
            path: "Sources/IDKit",
            exclude: [
                "Generated/idkit_coreFFI.h",
                "Generated/idkit_coreFFI.modulemap"
            ]
        )
    ]
)
