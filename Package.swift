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
            url: "https://github.com/chipp/idkit-swift/releases/download/4.0.0-dev-2/IDKitFFI.xcframework.zip",
            checksum: "06c573a049aaa42670bf678172ee55b4c0d1b6ca855cdcc87369a212023e3ecb"
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
