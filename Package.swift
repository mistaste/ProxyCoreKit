// ProxyCoreKit for Guardex iOS. The binary in this release is built from
// mistaste/proxy_core 7.2.2 with hardened local control planes and full-tunnel
// Apple routing. Source commit: fa7b958234f5515511a62539adc98aa44ea0538f.
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
            url: "https://github.com/mistaste/ProxyCoreKit/releases/download/7.2.2/ProxyCoreKit.xcframework.zip",
            checksum: "2ce78afa66ea28867c019af51fb7215a19206b6dc3a2efd82093de845fa055d1"
        )
    ]
)
