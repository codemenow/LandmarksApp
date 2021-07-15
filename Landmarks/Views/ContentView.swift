//
//  ContentView.swift
//  Landmarks
//
//  Created by Sreekanth Boddireddy on 7/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
