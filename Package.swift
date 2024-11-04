// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.9.0"
let checksum = "2cdace9fa5436eb59625187bc9c49b36ae26330d4668efc30090ce69bb6b98d9"
let commonVersion = "0.9.6"

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
