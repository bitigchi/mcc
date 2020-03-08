// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mcc",
    dependencies: [
        .package(url: "https://github.com/apple/swift-package-manager.git",
                 from: "0.5.0"),
        .package(url: "https://github.com/apple/swift-argument-parser",
                 from: "0.0.1"),
        .package(url: "https://github.com/bitigchi/mccCore.git",
                 from: "0.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "mcc",
            dependencies: ["SPMUtility", "mccCore", "ArgumentParser"]),
        .testTarget(
            name: "mccTests",
            dependencies: ["mcc"]),
    ]
)
