// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mcc",
    products: [
        .executable(name: "mcc", targets: ["mcc"]),
        .library(name: "mcc", targets: ["mccCore"])],
    dependencies: [
        .package(url: "https://github.com/apple/swift-package-manager.git", from: "0.4.0")
    ],
    targets: [
        .target(name: "mcc", dependencies: ["SPMUtility", "mccCore"]),
        .target(name: "mccCore", dependencies: []),
        .testTarget(name: "mccTests", dependencies: ["mcc"]),
    ]
)
