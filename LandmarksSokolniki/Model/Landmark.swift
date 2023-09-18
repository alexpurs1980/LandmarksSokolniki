//
//  Landmark.swift
//  LandmarksSokolniki
//
//  Created by Алексей Пурис on 16.09.2023.
//

import Foundation
import SwiftUI
import MapKit

//structure of data
struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    //calculate local coordinates
    var localeCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
