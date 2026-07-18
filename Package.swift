// ProxyCoreKit for Guardex iOS. The binary in this release is built from
// mistaste/proxy_core 7.2.0 with sustained egress verification.
// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "ProxyCoreKit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ProxyCoreKit",
            targets: ["ProxyCoreKitWrapper"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ProxyCoreKitWrapper",
            dependencies: ["ProxyCoreKitBinary"]
        ),
        .binaryTarget(
            name: "ProxyCoreKitBinary",
            url: "https://github.com/mistaste/ProxyCoreKit/releases/download/7.2.0/ProxyCoreKit.xcframework.zip",
            checksum: "6fede0db7a7c5cd32d3fd57749c1cd5aed614999db5430fbcad3e25ac4619e87"
        )
    ]
)
