// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "buzzvil-ios-sdk",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(
      name: "BuzzBoosterSDK",
      targets: ["BuzzBoosterSDK"]
    )
  ],
  dependencies: [],
  targets: [
    .binaryTarget(
      name: "BuzzBoosterSDK",
      path: "Sources/BuzzBoosterSDK/BuzzBoosterSDK.xcframework"
    )
  ],
  swiftLanguageVersions: [
    .v5
  ]
)
