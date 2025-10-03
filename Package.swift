// swift-tools-version:5.9
import PackageDescription

let package = Package(
  name: "libspatialite",
  platforms: [.iOS(.v17), .macOS(.v12)],
  products: [
    .library(name: "SpatialiteObjC", type: .dynamic, targets: ["SpatialiteObjC"]),
    .library(name: "libspatialite", targets: ["libspatialite"]),
  ],
  targets: [
    .binaryTarget(
      name: "libspatialite",
      url: "https://github.com/scottrhoyt/libspatialite-ios/releases/download/v0.2.2/libspatialite.xcframework.zip",
      checksum: "38b7ddb0df4d799e1458b948771185c94c69378e2cad2f2e866cdf4d5aa294ae"
    ),
    .target(
      name: "SpatialiteObjC",
      dependencies: [
        "libspatialite"
      ],
      path: "Sources/SpatialiteObjC",
      exclude: [],
      sources: ["LibSpatialite.m"],
      linkerSettings: [
        .linkedLibrary("z"),
        .linkedLibrary("iconv"),
        .linkedLibrary("c++"),
        .linkedLibrary("sqlite3"),
        .linkedLibrary("xml2"),
      ]
    ),
  ]
)
