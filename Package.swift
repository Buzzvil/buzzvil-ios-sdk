// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "buzzvil-ios-sdk",
  platforms: [
    .iOS(.v15)
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
    .package(url: "https://github.com/avatye-developer/sdk_adcash_ios", .upToNextMinor(from: "3.5.1")),
    .package(url: "https://github.com/IGAWorksDev/ap-ssp-sdk-ios-spm-objc", .upToNextMinor(from: "2.11.9")),
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
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/61002-178/BuzzvilSDK.zip",
      checksum: "a0487f66902f95d7440ad919c4b1423fed58bf04942de8ccb202ebdc4d465d0b"
    ),
    .binaryTarget(
      name: "BuzzAdBenefitSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/61002-178/BuzzAdBenefitSDK.zip",
      checksum: "c1f9bc8a86e875f36ce32a2d439b03a42eeb51440740ef764193613e68a277fe"
    ),
    .binaryTarget(
      name: "BuzzAvatyeAdCash",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/61002-178/BuzzAvatyeAdCash.zip",
      checksum: "d3626886a88e72315d8d7ef9a2dd67037297285ca88699745e1024ea0a79cdc2"
    ),
  ],
  swiftLanguageVersions: [
    .v5
  ]
)