// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "mcc",
    defaultLocalization: "en",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser",
                 from: "0.2.0"),
        .package(url: "https://github.com/bitigchi/mccCore.git",
                 from: "0.1.4")
    ],
    targets: [
        .target(
            name: "mcc",
            dependencies: [
                .product(name: "mccCore",
                         package: "mccCore"),
                .product(name: "ArgumentParser",
                         package: "swift-argument-parser")
            ],
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "mccTests",
            dependencies: ["mcc"]),
    ]
)
