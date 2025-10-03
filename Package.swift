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
      url: "https://github.com/scottrhoyt/libspatialite-ios/releases/download/v0.3.0/libspatialite.xcframework.zip",
      checksum: "3509e3e479081faf8a9d8a7f7b396c7eb54e19eeed9d0d30e9857baa9635df5d"
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
