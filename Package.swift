// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "DeanoDev",
    products: [
        .executable(name: "DeanoDev", targets: ["DeanoDev"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.3.0")
    ],
    targets: [
        .target(
            name: "DeanoDev",
            dependencies: ["Publish"]
        )
    ]
)