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
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/61003-180/BuzzvilSDK.zip",
      checksum: "6f7d677dca4e4519d9b9eda12d1200ff77be138b5e4e4ac1b91b784cbddd7774"
    ),
    .binaryTarget(
      name: "BuzzAdBenefitSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/61003-180/BuzzAdBenefitSDK.zip",
      checksum: "167ab54d62b4acc942100756178fa0a30e7697a273db581703d99b342bb463a0"
    ),
    .binaryTarget(
      name: "BuzzAvatyeAdCash",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/61003-180/BuzzAvatyeAdCash.zip",
      checksum: "22a901dbc3a0845f756c2ac55373d9999f5cb9b5c85b76d444207ef20ba04b18"
    ),
  ],
  swiftLanguageVersions: [
    .v5
  ]
)