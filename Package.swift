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
            url: "https://github.com/screeningeagledreamlab/ChartsXCFramework/releases/download/v3.6.0-catalyst/Charts.xcframework.zip",
            checksum: "a29e80f468d63b68e5bb6a7ce1e040ba1e829e610c74fd5a7883b750544325cd"
        )
    ]
)
