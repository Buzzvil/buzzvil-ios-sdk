// swift-tools-version: 5.7

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
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/8220/BuzzBoosterSDK.zip",
      checksum: "52f65c4e644c928f72cce065445cbbad6113224fbf5b10f44746b7140885c1c9"
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
