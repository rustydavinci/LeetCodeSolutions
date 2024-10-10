// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "LeetCodeSolutions",
    products: [
        .library(
            name: "LeetCodeSolutions",
            targets: ["LeetCodeSolutions"]),
    ],
    targets: [
        .target(
            name: "LeetCodeSolutions"),
        .testTarget(
            name: "LeetCodeSolutionsTests",
            dependencies: ["LeetCodeSolutions"]
        ),
    ]
)
