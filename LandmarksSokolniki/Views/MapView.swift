//
//  MapView.swift
//  LandmarksSokolniki
//
//  Created by Алексей Пурис on 15.09.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 55.804554, longitude: 37.670632),
                span: MKCoordinateSpan(
                    latitudeDelta: 0.03, longitudeDelta: 0.03))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}


#Preview {
    MapView()
}
