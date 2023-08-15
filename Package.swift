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
      targets: ["BuzzBoosterSDKTarget"]
    ),
  ],
  dependencies: [],
  targets: [
    .target(
      name: "BuzzBoosterSDKTarget",
      dependencies: [
        "BuzzBoosterSDK",
        "BuzzRxSwift"
      ],
      path: "Sources/BuzzBoosterSDKTarget"
    ),
    .binaryTarget(
      name: "BuzzBoosterSDK",
      path: "Sources/BuzzBoosterSDK/BuzzBoosterSDK.xcframework"
    ),
    .binaryTarget(
      name: "BuzzRxSwift",
      path: "Sources/BuzzRxSwift/BuzzRxSwift.xcframework"
    ),
  ],
  swiftLanguageVersions: [
    .v5
  ]
)
