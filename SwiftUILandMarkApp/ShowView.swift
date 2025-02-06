//
//  ShowView.swift
//  SwiftUILandMarkApp
//
//  Created by Eren Elçi on 7.02.2025.
//

import SwiftUI
import MapKit

struct ShowView: View {
    var coordinate: CLLocationCoordinate2D
    var imageName : String
    var name : String
    var country : String
    var category : String
    var body: some View {
        VStack {
            MapView(coordinate: coordinate, name: name ).frame(height: UIScreen.main.bounds.height * 0.4).ignoresSafeArea(edges : .top)
            CircleImage(image: imageName ).offset(y: -210).padding(.bottom , -130)
        
            VStack(alignment: .leading) {
                Text(name) .font(.title).padding(.leading)
                HStack {
                    Text(country).font(.title).padding(.leading)
                    Spacer()
                    Text(category).font(.title).padding(.horizontal)
                    
                }
            }
            Spacer()
        }
        
    }
}

#Preview {
    ShowView(coordinate:  CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), imageName: "mount_fuji", name: "Mount Fuji", country: "Japan", category: "Mountain")
}
