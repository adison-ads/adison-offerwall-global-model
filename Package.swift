// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.9.2"
let checksum = "e7e57992f1a9f35370395f42355da68920523fdf67d8996549fe7c8c4c914f1a"
let commonVersion = "0.10.2"

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
