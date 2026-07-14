// ProxyCoreKit for Guardex iOS. The binary in this release is built from
// mistaste/proxy_core 7.1.0 with Xray v1.26.5-mahsa-r1.
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
            url: "https://github.com/mistaste/ProxyCoreKit/releases/download/7.1.1/ProxyCoreKit.xcframework.zip",
            checksum: "666115b548c3a12bd5e3681e32a01e186073773249088264597bf6b7ea078a99"
        )
    ]
)
