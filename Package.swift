// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.1.2"
let checksum = "f3f18da27473faa9c4a6320e31a1c8c7e780a669378dd07b350876a9f96ebb99"
let commonVersion = "1.1.2"

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
