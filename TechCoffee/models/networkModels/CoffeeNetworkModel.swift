//
//  CoffeeNetworkModel.swift
//  TechCoffee
//
//  Created by Çağatay Yıldız on 2.07.2022.
//

import Foundation


struct CoffeeNetworkModel : Codable{
    
    var id : String = ""
    var coffeeName: String = ""
    var description: String = ""
    var imageName: String = ""
    var detailImageName: String = ""
    var region: String = ""
    var latitude: Double = 0.0
    var longitude : Double = 0.0
    
}
