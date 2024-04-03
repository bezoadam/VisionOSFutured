//
//  VisionOSTestApp.swift
//  VisionOSTest
//
//  Created by Adam Bezák on 01/03/2024.
//

import SwiftUI

@main
struct VisionOSTestApp: App {
    @State private var currentStyle: ImmersionStyle = .full

    var body: some Scene {
        WindowGroup {
            ContentView()
        }.windowStyle(.volumetric)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }

        ImmersiveSpace(id: "SunImmersiveSpace") {
            SunImmersiveView()
        }.immersionStyle(selection: $currentStyle, in: .full)
    }
}
