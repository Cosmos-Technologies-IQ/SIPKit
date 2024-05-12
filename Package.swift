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
                ],
                linkerSettings: [
                    .linkedLibrary("c++")
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
                      url: "https://github.com/Cosmos-Technologies-IQ/CTPJSIP/releases/download/v2.14.1/CTPJSIP.xcframework.zip",
                      checksum: "ecdb91aa9f9a69ec97a9a742b1c2a9656cfb8591858ab1f4a984c456adfbf351"),
    ]
)
