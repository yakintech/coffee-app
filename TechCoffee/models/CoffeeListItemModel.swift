//
//  CoffeeListItemModel.swift
//  TechCoffee
//
//  Created by BusranurOK on 21.06.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct CoffeeListItemModel: Hashable, Codable {
    
    var id : String = ""
    var coffeeName: String = ""
    var description: String = ""
    var imageName: String = ""
    var detailImageName: String = ""
    var region: String = ""
    var latitude: Double = 0.0
    var longitude : Double = 0.0
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

