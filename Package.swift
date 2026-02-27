// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Release version: 4.0.3

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
            url: "https://github.com/chipp/idkit-swift/releases/download/4.0.0-dev-4/IDKitFFI.xcframework.zip",
            checksum: "8ded610f67b9b5311bcd531e3b666be260a05f58c5a395d59da0c22f9aacc516"
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
