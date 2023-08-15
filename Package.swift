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
  dependencies: [
    .package(
      url: "https://github.com/Buzzvil/RxSwift.git",
      from: "6.5.1"
    )
  ],
  targets: [
    .target(
      name: "BuzzBoosterSDKTarget",
      dependencies: [
        .target(name: "BuzzBoosterSDK", condition: .when(platforms: [.iOS])),
        .product(name: "BuzzRxSwift", package: "BuzzRxSwift", condition: .when(platforms: [.iOS])),
      ],
      path: "Sources/BuzzBoosterSDKWrapper"
    ),
    .binaryTarget(
      name: "BuzzBoosterSDK",
      path: "Sources/BuzzBoosterSDK/BuzzBoosterSDK.xcframework"
    )
  ],
  swiftLanguageVersions: [
    .v5
  ]
)
