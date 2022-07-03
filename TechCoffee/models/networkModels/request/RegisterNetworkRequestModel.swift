//
//  RegisterNetworkRequestModel.swift
//  TechCoffee
//
//  Created by Çağatay Yıldız on 2.07.2022.
//

import Foundation


struct RegisterNetworkRequestModel : Codable
{
    
    var firstName : String = ""
    var lastName : String = ""
    var email : String = ""
    var password: String = ""
}
