//
//  Market.swift
//  trabalhoFinal
//
//  Created by coltec on 11/06/24.
//

import Foundation
import SwiftUI
import CoreLocation

struct Market: Hashable, Codable, Identifiable{
    var id: Int
    var nome: String
    var endereco: String
    var telefone: String
    var horario_funcionamento: String
    

    private var image_name: String
    var image: Image{
        Image(image_name)
    }
    
    private var coordenadas: Coordinates
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
    
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordenadas.latitude, longitude: coordenadas.longitude)
    }
    
}
