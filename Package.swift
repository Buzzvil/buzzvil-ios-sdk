// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "buzzvil-ios-sdk",
  platforms: [
    .iOS(.v13)
  ],
  products: [
    .library(
      name: "BuzzvilSDK",
      targets: [
        "BuzzvilSDKTarget",
      ]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios", .upToNextMajor(from: "3.23.0")),
  ],
  targets: [
    .target(
      name: "BuzzvilSDKTarget",
      dependencies: [
        "BuzzvilSDK",
        "BuzzAdBenefitSDK",
        "BuzzBoosterSDK",
        "BuzzRxSwift",
        .product(name: "GoogleInteractiveMediaAds", package: "swift-package-manager-google-interactive-media-ads-ios"),
      ],
      path: "Sources/BuzzvilSDKTarget"
    ),
    .binaryTarget(
      name: "BuzzvilSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/60402-24/BuzzvilSDK.zip",
      checksum: "9645efddf8fd118940b4f8c7ece1d62f8c05a22ec8f90a3209d71d149b926738"
    ),
    .binaryTarget(
      name: "BuzzAdBenefitSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/60402-24/BuzzAdBenefitSDK.zip",
      checksum: "0380cfe4b1acf5ab827e5e1d2ac76402381e6d591cacd487c67184174c555965"
    ),
    .binaryTarget(
      name: "BuzzBoosterSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/60402-24/BuzzBoosterSDK.zip",
      checksum: "be2a7f7e1fdadfdb21c84f916e91262504b08055bf0071f3beb776d5c809d15f"
    ),
    .binaryTarget(
      name: "BuzzRxSwift",
      url: "https://github.com/Buzzvil/RxSwift/releases/download/v7.0.0/BuzzRxSwift.zip",
      checksum: "772edfb6e77b41f888d4430e46e00d1ec147dc9d26b3f2ce464dbc00d678f963"
    ),
  ],
  swiftLanguageVersions: [
    .v5
  ]
)