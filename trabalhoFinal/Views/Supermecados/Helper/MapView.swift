//
//  MapView.swift
//  trabalhoFinal
//
//  Created by coltec on 11/06/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    private var regiao: MKCoordinateRegion{
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                )
    }
    var body: some View {
        Map(position: .constant(.region(regiao)))
    }
}

#Preview {
    MapView(coordinate: Model().markets[0].locationCoordinate)
}
