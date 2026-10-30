// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "IDentityLiteSDK",
    platforms: [
        .iOS("15.6")
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
        .binaryTarget(name: "IDentityLiteSDK", url: "https://github.com/Idmission-LLC/ios-sdk-releases/releases/download/lite-11.1.19.2.5/IDentityLiteSDK.zip", checksum: "529227d48653ea1a5f839f1611f979b49566814819de9b5b59d8a6473ba933d2"),
        .binaryTarget(name: "IDCaptureLite", url: "https://github.com/Idmission-LLC/ios-sdk-releases/releases/download/lite-11.1.19.2.5/IDCaptureLite.zip", checksum: "80928d5361de9b9195395ce737a82a0547269dfdb6844a76f9fd49bc0ea812a6"),
        .binaryTarget(name: "SelfieCaptureLite", url: "https://github.com/Idmission-LLC/ios-sdk-releases/releases/download/lite-11.1.19.2.5/SelfieCaptureLite.zip", checksum: "8d924381b720ec4c75b1e3e8e6dcb91a24c35095d236464a8b4d6b20a8a61eba"),
        .binaryTarget(name: "IDentityLiteModels", url: "https://github.com/Idmission-LLC/ios-sdk-releases/releases/download/lite-11.1.19.2.5/IDentityLiteModels.zip", checksum: "58786c417d2629da6c79c7a478538cc3798831f3785aa43a569923d37b43244a"),
        .binaryTarget(name: "SignatureCaptureLite", url: "https://github.com/Idmission-LLC/ios-sdk-releases/releases/download/lite-11.1.19.2.5/SignatureCaptureLite.zip", checksum: "0461f8f9267bf0081a14764f1a061c93626be48cf3845c17321e0ef59ac35ef2"),
        .binaryTarget(name: "VoiceCaptureLite", url: "https://github.com/Idmission-LLC/ios-sdk-releases/releases/download/lite-11.1.19.2.5/VoiceCaptureLite.zip", checksum: "aca9b759d29467a5904137a7cdf18e5442f3f72c50c2d7d1780da4f74440fb22"),
        .binaryTarget(name: "FingerPrintCaptureLite", url: "https://github.com/Idmission-LLC/ios-sdk-releases/releases/download/lite-11.1.19.2.5/FingerPrintCaptureLite.zip", checksum: "031a56b154291811e1842dc227fea17b58bc20afb94eae6f8016edd16ba9a6da")
    ]
)
