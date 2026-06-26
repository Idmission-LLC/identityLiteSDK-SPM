// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "IDentityLiteSDK",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "IDentityLiteSDK", targets: ["IDentityLiteSDKTarget"]),
        .library(name: "IDentityLiteModels", targets: ["IDentityLiteModelsTarget"]),
        .library(name: "SignatureCaptureLiteSDK", targets: ["SignatureCaptureLiteSDKTarget"]),
        .library(name: "VoiceCaptureLiteSDK", targets: ["VoiceCaptureLiteSDKTarget"]),
        .library(name: "FingerPrintCaptureLiteSDK", targets: ["FingerPrintCaptureLiteSDKTarget"])
    ],
    targets: [
        // These targets link the binary frameworks and the external dependencies together.
        .target(
            name: "IDentityLiteSDKTarget",
            dependencies: [
                "IDentityLiteSDK",
                "IDCaptureLite",
                "SelfieCaptureLite"
            ],
            path: "Sources/IDentityLite"
        ),
        .target(
            name: "IDentityLiteModelsTarget",
            dependencies: ["IDentityLiteModels"],
            path: "Sources/IDentityLiteModels"
        ),
        .target(
            name: "SignatureCaptureLiteSDKTarget",
            dependencies: ["SignatureCaptureLite"],
            path: "Sources/SignatureCaptureLite"
        ),
        .target(
            name: "VoiceCaptureLiteSDKTarget",
            dependencies: ["VoiceCaptureLite"],
            path: "Sources/VoiceCaptureLite"
        ),
        .target(
            name: "FingerPrintCaptureLiteSDKTarget",
            dependencies: ["FingerPrintCaptureLite"],
            path: "Sources/FingerPrintCaptureLite"
        ),

        // --- Binary Targets (Lite) ---
        .binaryTarget(name: "IDentityLiteSDK", path: "Frameworks/IDentityLiteSDK.xcframework"),
        .binaryTarget(name: "IDCaptureLite", path: "Frameworks/IDCaptureLite.xcframework"),
        .binaryTarget(name: "SelfieCaptureLite", path: "Frameworks/SelfieCaptureLite.xcframework"),
        .binaryTarget(name: "IDentityLiteModels", path: "Frameworks/IDentityLiteModels.xcframework"),
        .binaryTarget(name: "SignatureCaptureLite", path: "Frameworks/SignatureCaptureLite.xcframework"),
        .binaryTarget(name: "VoiceCaptureLite", path: "Frameworks/VoiceCaptureLite.xcframework"),
        .binaryTarget(name: "FingerPrintCaptureLite", path: "Frameworks/FingerPrintCaptureLite.xcframework")
    ]
)
