import PackageDescription

let package = Package(
    name: "TabPageViewController",
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
