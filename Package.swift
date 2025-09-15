// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FlowCommoniOS",
    platforms: [
        .iOS(.v10) // matches s.ios.deployment_target = '10.0'
    ],
    products: [
        .library(
            name: "FlowCommoniOS",
            targets: ["FlowCommoniOS"]
        ),
    ],
    targets: [
        .target(
            name: "FlowCommoniOS",
            path: "Sources/FlowCommoniOSFiles",
            exclude: [],  // if needed
            sources: nil, // use all .swift files in the path
            publicHeadersPath: nil
        ),
        .testTarget(
            name: "FlowCommoniOSTests",
            dependencies: ["FlowCommoniOS"],
            path: "Tests" // only if you create tests in a Tests folder
        )
    ],
    swiftLanguageVersions: [.v5]
)
