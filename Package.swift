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
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/60900-145/BuzzvilSDK.zip",
      checksum: "35bd856f3f0823655e7e663b9ae60be058242f51959ce0020e6b6ad9c648dc62"
    ),
    .binaryTarget(
      name: "BuzzAdBenefitSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/60900-145/BuzzAdBenefitSDK.zip",
      checksum: "97de181a2312d0fb49c9884c4c4a3319ecc7b73bbec32310823f2354d9ee411b"
    ),
    .binaryTarget(
      name: "BuzzAvatyeAdCash",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/60900-145/BuzzAvatyeAdCash.zip",
      checksum: "8a8cccef0d8d1447cec554d3ce0ec0ff1e756cca6b9e9a8e1d54ffbb6ba0acab"
    ),
  ],
  swiftLanguageVersions: [
    .v5
  ]
)