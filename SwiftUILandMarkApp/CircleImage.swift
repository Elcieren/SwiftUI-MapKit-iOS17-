//
//  CircleImage.swift
//  SwiftUILandMarkApp
//
//  Created by Eren Elçi on 7.02.2025.
//

import SwiftUI

struct CircleImage: View {
    var image: String = "mount_fuji"
    var body: some View {
        Image(image).resizable().aspectRatio(contentMode: .fill).frame(width: 250, height: 250)
            
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white ,lineWidth: 4)
            }.shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
