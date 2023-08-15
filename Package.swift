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
      url: "https://storage.googleapis.com/buzzvil-client-app/bab-ios/8240/BuzzBoosterSDK.zip",
      checksum: "795e04e35b7d30021ae494d1165c9b514a1178455f50c1be0b44739e2b11687a"
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