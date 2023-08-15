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
        .target(name: "BuzzBoosterSDK", condition: .when(platforms: [.iOS])),
        .target(name: "BuzzRxSwift", condition: .when(platforms: [.iOS])),
      ],
      path: "Sources/BuzzBoosterSDKWrapper"
    ),
    .binaryTarget(
      name: "BuzzBoosterSDK",
      path: "Sources/BuzzBoosterSDK/BuzzBoosterSDK.xcframework"
    ),
    .binaryTarget(
      name: "BuzzRxSwift",
      path: "Sources/BuzzRxSwift/BuzzRxSwift.xcframework"
    )
  ],
  swiftLanguageVersions: [
    .v5
  ]
)
