// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "mcc",
    dependencies: [
        .package(url: "https://github.com/apple/swift-package-manager.git",
                 from: "0.5.0"),
        .package(url: "https://github.com/apple/swift-argument-parser",
                 from: "0.0.1"),
        .package(url: "https://github.com/bitigchi/mccCore.git",
                 from: "0.1.3")
    ],
    targets: [
        .target(
            name: "mcc",
            dependencies: ["SPMUtility", "mccCore", "ArgumentParser"]),
        .testTarget(
            name: "mccTests",
            dependencies: ["mcc"]),
    ]
)
