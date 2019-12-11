// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestBinary",
    dependencies: [
    ],
    targets: [
        .target(name: "exe", dependencies: ["Library"]),
        .target(name: "Library", dependencies: ["Framework"]),
        .target(name: "cexe", dependencies: ["CLibrary"]),
        .target(name: "CLibrary", dependencies: ["StaticLibrary", "DynamicLibrary"]),
        ._binaryTarget(name: "Framework", path: "Framework.xcframework"),
        ._binaryTarget(name: "StaticLibrary", path: "StaticLibrary.xcframework"),
        ._binaryTarget(name: "DynamicLibrary", path: "DynamicLibrary.xcframework"),
    ]
)
