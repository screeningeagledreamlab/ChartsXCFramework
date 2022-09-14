// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "ChartsXCFramework",
    products: [
        .library(name: "Charts", targets: ["Charts"])
    ],
    targets: [
        .binaryTarget(
            name: "Charts",
            url: "https://github.com/screeningeagledreamlab/ChartsXCFramework/releases/download/v3.6.0-xcode14-fix/Charts.xcframework.zip",
            checksum: "a8b8c452a331fb3b93d536058fd0413e2a1493698c032a5cfb2a99ec5584c92d"
        )
    ]
)
