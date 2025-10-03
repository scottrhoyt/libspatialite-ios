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
      url: "https://github.com/scottrhoyt/libspatialite-ios/releases/download/v0.2.1/libspatialite.xcframework.zip",
      checksum: "bb208896a05aab3742e8a8ad6a623b8d3423747b93753cb06a9da0db558c9008"
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
