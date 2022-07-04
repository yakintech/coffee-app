//
//  UserModel.swift
//  TechCoffee
//
//  Created by Çağatay Yıldız on 19.06.2022.
//

import Foundation


struct UserModel : Codable, Hashable{
    
    var name : String = ""
    var surname : String = ""
    var email : String = ""
    var password: String = ""
    
}
