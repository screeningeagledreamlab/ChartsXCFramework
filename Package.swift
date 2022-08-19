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
            url: "https://github.com/screeningeagledreamlab/ChartsXCFramework/releases/download/v3.6.0/Charts.xcframework.zip",
            checksum: "a19b330c8d2cf79d668094ab06c3f2721b47188724c78095fc9fc22a876a4ed8"
        )
    ]
)
