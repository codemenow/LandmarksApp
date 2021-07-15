//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Sreekanth Boddireddy on 7/4/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
