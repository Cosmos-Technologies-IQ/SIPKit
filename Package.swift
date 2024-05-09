// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SIPKit",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
//        .library(name: "SIPKit", targets: ["SIPKit"]),
        .library(name: "Vialer", targets: ["Vialer"]),
    ],
    targets: [
        .target(name: "SIPKit",
                dependencies: ["C"],
                path: "Sources/SIPKit",
                cSettings: [
                    .define("PJ_AUTOCONF")
                ]),
        
        .target(name: "Vialer",
                dependencies: ["CTPJSIP", "Reachability", "CocoalumberJack"],
                path: "Sources/VialerSIPLib",
                publicHeadersPath: "Classes",
                cSettings: [
                    .headerSearchPath("../.."),
                    .define("PJ_AUTOCONF"),
                ]),
        
        .target(name: "C",
                dependencies: ["CTPJSIP"],
                path: "Sources/C",
                cSettings: [
                    .define("PJ_AUTOCONF")
                ]),
        
        .target(name: "Reachability",
                path: "Sources/Dependencies/Reachability"),
        
        .target(name: "CocoalumberJack",
                path: "Sources/Dependencies/CocoalumberJack"),
        
        .binaryTarget(name: "CTPJSIP",
                      path: "Libraries/CTPJSIP.xcframework"),
    ]
)
