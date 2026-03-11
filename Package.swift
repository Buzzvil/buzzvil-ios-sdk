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
    .library(
      name: "BuzzvilSDK-WithoutThirdParty",
      targets: [
        "BuzzvilSDK-WithoutThirdPartyTarget",
      ]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/avatye-developer/sdk_adcash_ios", .upToNextMinor(from: "3.4.0")),
    .package(url: "https://github.com/IGAWorksDev/ap-ssp-sdk-ios-spm-objc", .upToNextMinor(from: "2.11.1")),
  ],
  targets: [
    .target(
      name: "BuzzvilSDKTarget",
      dependencies: [
        "BuzzvilSDK",
        "BuzzAdBenefitSDK",
        "BuzzAvatyeAdCash",
        .product(name: "AvatyeAdCash", package: "sdk_adcash_ios"),
        .product(name: "AdPopcornSSPSDK", package: "ap-ssp-sdk-ios-spm-objc"),
      ],
      path: "Sources/BuzzvilSDKTarget"
    ),
    .target(
      name: "BuzzvilSDK-WithoutThirdPartyTarget",
      dependencies: [
        "BuzzvilSDK",
        "BuzzAdBenefitSDK",
      ],
      path: "Sources/BuzzvilSDK-WithoutThirdPartyTarget"
    ),
    .binaryTarget(
      name: "BuzzvilSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/60601-79/BuzzvilSDK.zip",
      checksum: "a21466521f9b31645154dfb50e6ef92a28d765712236d80d3ae91ad1d7bb92b6"
    ),
    .binaryTarget(
      name: "BuzzAdBenefitSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/60601-79/BuzzAdBenefitSDK.zip",
      checksum: "e5b7d8f73a847d1c84d6c1d562f0ffcedc5a79c639abfbc8fec413283c216b7e"
    ),
    .binaryTarget(
      name: "BuzzAvatyeAdCash",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/60601-79/BuzzAvatyeAdCash.zip",
      checksum: "1cf7ba2c76f810694f18967b390ab17fc2aef9df9ea60c3820f6e3dd1df80f8c"
    ),
  ],
  swiftLanguageVersions: [
    .v5
  ]
)