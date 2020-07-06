// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "DeanoDev",
    products: [
        .executable(name: "DeanoDev", targets: ["DeanoDev"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.7.0"),
        .package(url: "https://github.com/johnsundell/splashpublishplugin", from: "0.1.0"),
        .package(url: "https://github.com/SwiftyGuerrero/CNAMEPublishPlugin", from: "0.2.0")
    ],
    targets: [
        .target(
            name: "DeanoDev",
            dependencies: ["Publish", "SplashPublishPlugin", "CNAMEPublishPlugin"]
        )
    ]
)
