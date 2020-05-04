// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "mcc",
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser",
                 from: "0.0.1"),
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
        ]),
        .testTarget(
            name: "mccTests",
            dependencies: ["mcc"]),
    ]
)
