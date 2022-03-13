// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TabPageViewController",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "TabPageViewController", targets: ["TabPageViewController"])
    ],
    targets: [
        .target(
            name: "TabPageViewController",
            path: "Sources",
            exclude: ["Info.plist"]
        )
    ]
)
