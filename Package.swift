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
  ],
  targets: [
    .target(
      name: "BuzzvilSDKTarget",
      dependencies: [
        "BuzzvilSDK",
        "BuzzAdBenefitSDK",
      ],
      path: "Sources/BuzzvilSDKTarget"
    ),
    .binaryTarget(
      name: "BuzzvilSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/60600-77/BuzzvilSDK.zip",
      checksum: "fc269dd089139040c820705f0dd6143fb46249936ede7732ba6d89a868691bc9"
    ),
    .binaryTarget(
      name: "BuzzAdBenefitSDK",
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/60600-77/BuzzAdBenefitSDK.zip",
      checksum: "9bb3553fa8994d3abadd467eba101e477461b231db6a3fb21d4326b579a16c9f"
    ),
  ],
  swiftLanguageVersions: [
    .v5
  ]
)