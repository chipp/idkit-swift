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
            url: "https://github.com/chipp/idkit-swift/releases/download/4.0.0-dev-3/IDKitFFI.xcframework.zip",
            checksum: "eb65f65f2eefc4ba6d78645f357bc493c204e8fc8cb390e87a0d4fed31a7bb48"
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
