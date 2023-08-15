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
      targets: [
        "BuzzBoosterSDKTarget",
      ]
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
      url: "https://circleci.com/api/v2/project/gh/Buzzvil/buzzvil-ios-sdk/pipeline",
      checksum: "4b663e5d5d055cfaeff5f02e5187b6adebbe2eadcb7d0815a5dc234be797cffa"
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