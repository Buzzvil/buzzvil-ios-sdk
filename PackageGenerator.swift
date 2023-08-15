import Foundation

let arguments = CommandLine.arguments
let archivedURL = arguments[1]
let checksum = arguments[2]

let packageDescription = """
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
      url: "\(archivedURL)",
      checksum: "\(checksum)"
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
"""
print(packageDescription)
try packageDescription.write(to: URL(fileURLWithPath: "./Package.swift"), atomically: true, encoding: .utf8)