// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "libspatialite",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "libspatialite", targets: ["libspatialite"])
    ],
    targets: [
        .binaryTarget(
                    name: "libspatialite",
                    url: "https://github.com/mozi-app/libspatialite-ios/releases/download/v5.1.0/libspatialite.xcframework.zip"
                ),
    ]
)