//
//  LandmarkModel.swift
//  SwiftUILandMarkApp
//
//  Created by Eren Elçi on 7.02.2025.
//

import Foundation
import SwiftUI
import CoreLocation

struct LandmarkModel: Identifiable {
    var id : Int
    var name : String
    var imageName : String
    var country : String
    var category : String
    var coordinates : Coordinates
    
    var locationCoordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

struct Coordinates {
    var latitude : Double
    var longitude : Double
}

let eiffelTower = LandmarkModel(
    id: 0,
    name: "Eiffel Tower",
    imageName: "eiffel_tower",
    country: "France",
    category: "Tower",
    coordinates: Coordinates(latitude: 48.8584, longitude: 2.2945)
)
let greatWallOfChina = LandmarkModel(
    id: 1,
    name: "Great Wall of China",
    imageName: "great_wall",
    country: "China",
    category: "Historical",
    coordinates: Coordinates(latitude: 40.4319, longitude: 116.5704)
)

let statueOfLiberty = LandmarkModel(
    id: 2,
    name: "Statue of Liberty",
    imageName: "statue_of_liberty",
    country: "USA",
    category: "Monument",
    coordinates: Coordinates(latitude: 40.6892, longitude: -74.0445)
)

let tajMahal = LandmarkModel(
    id: 3,
    name: "Taj Mahal",
    imageName: "taj_mahal",
    country: "India",
    category: "Mausoleum",
    coordinates: Coordinates(latitude: 27.1751, longitude: 78.0421)
)

let machuPicchu = LandmarkModel(
    id: 4,
    name: "Machu Picchu",
    imageName: "machu_picchu",
    country: "Peru",
    category: "Archaeological",
    coordinates: Coordinates(latitude: -13.1631, longitude: -72.5450)
)

let colosseum = LandmarkModel(
    id: 5,
    name: "Colosseum",
    imageName: "colosseum",
    country: "Italy",
    category: "Historical",
    coordinates: Coordinates(latitude: 41.8902, longitude: 12.4922)
)

let pyramidsOfGiza = LandmarkModel(
    id: 6,
    name: "Pyramids of Giza",
    imageName: "pyramids_of_giza",
    country: "Egypt",
    category: "Archaeological",
    coordinates: Coordinates(latitude: 29.9792, longitude: 31.1342)
)

let mountFuji = LandmarkModel(
    id: 7,
    name: "Mount Fuji",
    imageName: "mount_fuji",
    country: "Japan",
    category: "Mountain",
    coordinates: Coordinates(latitude: 35.3606, longitude: 138.7274)
)

let grandCanyon = LandmarkModel(
    id: 8,
    name: "Grand Canyon",
    imageName: "grand_canyon",
    country: "USA",
    category: "Natural",
    coordinates: Coordinates(latitude: 36.1069, longitude: -112.1129)
)

let sydneyOperaHouse = LandmarkModel(
    id: 9,
    name: "Sydney Opera House",
    imageName: "sydney_opera_house",
    country: "Australia",
    category: "Architectural",
    coordinates: Coordinates(latitude: -33.8569, longitude: 151.2153)
)


let landmarks = [
    eiffelTower,
    greatWallOfChina,
    statueOfLiberty,
    tajMahal,
    machuPicchu,
    colosseum,
    pyramidsOfGiza,
    mountFuji,
    grandCanyon,
    sydneyOperaHouse
]

