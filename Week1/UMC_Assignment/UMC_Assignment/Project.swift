import ProjectDescription

let project = Project(
    name: "UMC_Assignment",
    packages: [
        .remote(
            url: "https://github.com/Alamofire/Alamofire.git",
            requirement: .upToNextMajor(from: "5.10.0")
        )
    ],

    targets: [
        .target(
            name: "UMC_Assignment",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.UMC-Assignment",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["UMC_Assignment/Sources/**"],
            resources: ["UMC_Assignment/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "UMC_AssignmentTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.UMC-AssignmentTests",
            infoPlist: .default,
            sources: ["UMC_Assignment/Tests/**"],
            resources: [],
            dependencies: [.target(name: "UMC_Assignment")]
        ),
    ]
)
