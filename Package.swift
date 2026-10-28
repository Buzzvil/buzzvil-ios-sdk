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
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/61001-176/BuzzvilSDK.zip",
      checksum: "fc11b5ac657e1b612bc3338b0c54163f27fc1ebeb0bf23da7edc9fd6add17265"
    ),
    .binaryTarget(
      name: "BuzzAdBenefitSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/61001-176/BuzzAdBenefitSDK.zip",
      checksum: "a3c52e3ec2b285dd65e6d594333db747b798f88888bc5a4147fdf5f8e0f35d0b"
    ),
    .binaryTarget(
      name: "BuzzAvatyeAdCash",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/61001-176/BuzzAvatyeAdCash.zip",
      checksum: "4680767e3214ef6af8c63008488e96670845a665d60e64e90b8925d5d91ee212"
    ),
  ],
  swiftLanguageVersions: [
    .v5
  ]
)