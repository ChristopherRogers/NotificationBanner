// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "NotificationBanner",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "NotificationBanner",
            targets: ["NotificationBanner"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.0"),
        .package(url: "https://github.com/rollmind/MarqueeLabel.git", .branch("spm")), // usually cbpowell/MarqueeLabel.git
    ],
    targets: [
        .target(
            name: "NotificationBanner",
            dependencies: [
                "SnapKit",
                "MarqueeLabel",
            ],
            path: "NotificationBanner/Classes"),
    ],
    swiftLanguageVersions: [.v5]
)
