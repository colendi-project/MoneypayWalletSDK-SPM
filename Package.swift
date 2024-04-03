// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MoneypayWalletSDK-SPM",
    defaultLocalization: "tr",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "MoneypayWalletSDK-SPM",
            targets: ["MoneypayWalletSDK-SPM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", branch: "master"),
        .package(url: "https://github.com/krzyzanowskim/OpenSSL.git", .upToNextMinor(from: "1.1.170")),
        .package(url: "https://github.com/daltoniam/Starscream.git", exact: "3.1.1"),
        .package(url: "https://github.com/stasel/WebRTC.git", .upToNextMajor(from: "94.0.0"))
    ],
    targets: [
        .binaryTarget(name: "IdentifySDK", path: "Sources/IdentifySDK.xcframework"),
        .binaryTarget(name: "MoneypayWalletSDK", path: "Sources/MoneypayWalletSDK.xcframework"),
        .target(
            name: "MoneypayWalletSDK-SPM",
            dependencies: [
                "IdentifySDK",
                "MoneypayWalletSDK",
                "Alamofire",
                "OpenSSL",
                "Starscream",
                "WebRTC"
            ]
        )
    ]
)
