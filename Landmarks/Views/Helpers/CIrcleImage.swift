//
//  CIrcleImage.swift
//  Landmarks
//
//  Created by Sreekanth Boddireddy on 7/10/21.
//

import SwiftUI

struct CIrcleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CIrcleImage_Previews: PreviewProvider {
    static var previews: some View {
        CIrcleImage(image: Image("turtlerock"))
    }
}
