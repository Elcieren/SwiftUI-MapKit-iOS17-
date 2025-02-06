//
//  ContentView.swift
//  SwiftUILandMarkApp
//
//  Created by Eren Elçi on 7.02.2025.
//

import SwiftUI

struct DetailsView: View {
    var body: some View {
        NavigationView {
            List(landmarks, id: \.id) { item in
                NavigationLink {
                    ShowView(coordinate: item.locationCoordinate, imageName: item.imageName, name: item.name, country: item.country, category: item.category)
                } label: {
                    HStack {
                        Image(item.imageName).resizable().aspectRatio(contentMode: .fill).frame(width: 50, height: 10).padding()
                        Text(item.name)
                    }
                    
                }

            }.navigationTitle(Text("Landmarks App"))
                
            }
        }
    }


#Preview {
    DetailsView()
}
