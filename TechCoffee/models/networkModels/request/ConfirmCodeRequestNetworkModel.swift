//
//  ConfirmCodeRequestNetworkModel.swift
//  TechCoffee
//
//  Created by Çağatay Yıldız on 3.07.2022.
//

import Foundation


struct ConfirmCodeRequestModel : Codable{
    
    var email : String = ""
    var confirmCode : String = ""
    
}
