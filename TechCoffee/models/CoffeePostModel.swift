//
//  CoffeePostModel.swift
//  TechCoffee
//
//  Created by baskurthalit on 4.07.2022.
//

import Foundation
import SwiftUI


struct CoffePostModel: Hashable, Identifiable, Codable {

    let id : Int
    let postImageUrl: String
    let postedTime: String
    
    
    var user: UserModel

}
