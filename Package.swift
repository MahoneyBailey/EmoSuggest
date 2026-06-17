// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "EmoSuggest",
    platforms: [.iOS(.v18)],
    products: [
        .library(name: "EmoSuggest", targets: ["EmoSuggest"])
    ],
    targets: [
        .target(name: "EmoSuggest"),
        .testTarget(name: "EmoSuggestTests")
    ]
)