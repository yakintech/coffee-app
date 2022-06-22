//
//  CoffeeListItemModel.swift
//  TechCoffee
//
//  Created by BusranurOK on 21.06.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct CoffeeListItemModel: Hashable,Codable, Identifiable  {
    
    let id: Int
    let coffeeName: String
    let description: String
    let region: String
    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var detailImageName: String
    var detailImage: Image {
        Image(detailImageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}

/*
struct CoffeeList {
    
    static let coffees : [CoffeeListItemModel] = [
        
        CoffeeListItemModel(imageName: "Espresso",
                            description: "Espresso"),
        
        CoffeeListItemModel(imageName: "Cappuccino",
                            description: "Cappuccino"),
        
        CoffeeListItemModel(imageName: "Macciato",
                            description: "Macciato"),
        
        CoffeeListItemModel(imageName: "Mocha",
                            description: "Mocha"),
        
        CoffeeListItemModel(imageName: "Latte",
                            description: "Latte")
    ]
}
*/

