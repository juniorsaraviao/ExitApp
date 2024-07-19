// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ExitApp",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ExitApp",
            targets: ["ExitAppPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "ExitAppPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/ExitAppPlugin"),
        .testTarget(
            name: "ExitAppPluginTests",
            dependencies: ["ExitAppPlugin"],
            path: "ios/Tests/ExitAppPluginTests")
    ]
)