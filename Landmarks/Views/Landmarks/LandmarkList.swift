//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Sreekanth Boddireddy on 7/10/21.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var favoriteLandmarks: [Landmark] {
        modelData.landmarks.filter{ landmark in
            landmark.isFavorite
        }
    }
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly, label: {Text("Favorites only")})
                ForEach(showFavoritesOnly ? favoriteLandmarks : modelData.landmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
