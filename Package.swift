// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "XMediatorLevelPlayBidMachineAdapterCompatibility",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "LevelPlayBidMachineAdapter", targets: ["LevelPlayBidMachineAdapterWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-BidMachine-Adapter-Swift-Package.git", exact: "5.7.1"),
    ],
    targets: [
        .target(
            name: "LevelPlayBidMachineAdapterWrapper",
            dependencies: [
                .product(
                    name: "BidMachineAdapter",
                    package: "LevelPlay-BidMachine-Adapter-Swift-Package",
                    moduleAliases: ["BidMachineAdapter": "LevelPlayBidMachineAdapterTarget"]
                ),
            ]
        ),
    ]
)
