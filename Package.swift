// swift-tools-version:5.9
import PackageDescription

let package = Package(
  name: "libspatialite",
  platforms: [.iOS(.v17), .macOS(.v12)],
  products: [
    .library(name: "CSpatialite", type: .dynamic, targets: ["CSpatialite"]),
    .library(name: "libspatialite", targets: ["libspatialite"]),
  ],
  targets: [
    .binaryTarget(
      name: "libspatialite",
      url: "https://github.com/scottrhoyt/libspatialite-ios/releases/download/v0.4.0/libspatialite.xcframework.zip",
      checksum: "358acc183c2c932c526ff3f328b28e29b01edcb90562a8280a8bc5f0a27d38aa"
    ),
    .target(
      name: "CSpatialite",
      dependencies: [
        "libspatialite"
      ],
      path: "Sources/CSpatialite",
      exclude: [],
      sources: ["LibSpatialite.c"],
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
