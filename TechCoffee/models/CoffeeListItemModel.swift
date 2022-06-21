//
//  CoffeeListItemModel.swift
//  TechCoffee
//
//  Created by BusranurOK on 21.06.2022.
//

import Foundation

struct CoffeeListItemModel: Hashable {
    
    let imageName : String
    let description : String
    
}

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
