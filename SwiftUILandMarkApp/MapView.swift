//
//  MapView.swift
//  SwiftUILandMarkApp
//
//  Created by Eren Elçi on 7.02.2025.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    var name: String

    var body: some View {
        Map(initialPosition: .region(region)) {
            Annotation(name, coordinate: coordinate, anchor: .center, accessoryAnchor: .bottom) {
                Button(action: {
                    openMapsApp()
                }) {
                    Image(systemName: "mappin.circle.fill")
                        .foregroundColor(.red)
                        .font(.title)
                }
            }
        }
    }

    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }

    private func openMapsApp() {
        let placemark = MKPlacemark(coordinate: coordinate)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = name // Harita uygulamasında gösterilecek isim
        mapItem.openInMaps(launchOptions: nil)
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), name: "Eiffel Tower")
}
