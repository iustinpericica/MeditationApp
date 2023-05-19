//
//  HelpView.swift
//  MeditationApp
//
//  Created by Iustin Pericica on 19.05.2023.
//

import SwiftUI
import MapKit

struct Marker: Identifiable {
    let id = UUID()
    var location: MapMarker
}

struct LocationView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.426747, longitude: 26.102445), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))

    let markers = [Marker(location: MapMarker(coordinate: CLLocationCoordinate2D(latitude: 44.426747, longitude: 26.102445), tint: .red))]


    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true,
          annotationItems: markers) { marker in
            marker.location
        }
          .toolbar(.hidden, for: .tabBar)
          .ignoresSafeArea(.all)

    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
