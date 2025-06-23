// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.0"
let checksum = "60f808e39dab6e43479a1597f07d315b86baec1c31d12129aaf52a745d8a3940"
let commonVersion = "0.10.4"

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
