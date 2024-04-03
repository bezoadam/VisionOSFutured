//
//  ImmersiveView.swift
//  VisionOSTest
//
//  Created by Adam Bezák on 01/03/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SunImmersiveView: View {
    var body: some View {
        RealityView { content in
            // Add the initial RealityKit content
            if let scene = try? await Entity(named: "SunImmersive", in: realityKitContentBundle) {
                content.add(scene)
            }
        }
    }
}

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            // Add the initial RealityKit content
            if let scene = try? await Entity(named: "Immersive", in: realityKitContentBundle) {
                content.add(scene)
            }
        }
    }
}

#Preview {
    ImmersiveView()
        .previewLayout(.sizeThatFits)
}
