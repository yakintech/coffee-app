//
//  RegisterNetworkRequestModel.swift
//  TechCoffee
//
//  Created by Çağatay Yıldız on 2.07.2022.
//

import Foundation


struct RegisterNetworkRequestModel : Codable
{
    
    var name : String = ""
    var surname : String = ""
    var email : String = ""
    var password: String = ""
}
