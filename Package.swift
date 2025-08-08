// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.2"
let checksum = "61770fba6709c9946a8790df34ef0e4eba6aa319e94f04433177259e5375931d"
let commonVersion = "1.0.0"

let package = Package(
    name: "AdisonOfferwallGlobalModel",
    products: [
        .library(
            name: "AdisonOfferwallGlobalModel",
            targets: ["AdisonOfferwallGlobalModel", "AdisonOfferwallGlobalModelTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adison-ads/adison-offerwall-common", exact: Version(stringLiteral: commonVersion))
    ],
    targets: [
        .binaryTarget(
            name: "AdisonOfferwallGlobalModel",
            url: "https://github.com/adison-ads/adison-offerwall-global-model/releases/download/\(version)/AdisonOfferwallGlobalModel.zip",
            checksum: checksum
        ),
        .target(
            name: "AdisonOfferwallGlobalModelTarget",
            dependencies: [
                .product(name: "AdisonOfferwallCommon", package: "adison-offerwall-common")
            ],
            path: "Sources"
        )
    ]
)
