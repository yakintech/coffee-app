//
//  GenericNetwork.swift
//  TechCoffee
//
//  Created by Çağatay Yıldız on 2.07.2022.
//

import Foundation
import Alamofire

class GenericNetwork<T> where T : Codable {
    
    let baseUrl = "https://seashell-app-woiws.ondigitalocean.app/api"
    
    func getAll(url:String, completionHandler: @escaping (ResponseBaseModel) -> Void){
        
        let request = AF.request(baseUrl + url)
        
        request.responseDecodable(of: [T].self){response in
            
            var responseModel = ResponseBaseModel()
            responseModel.statusCode = response.response?.statusCode ?? 0
            responseModel.errorMessage = ""
            responseModel.data = response.value!
            
            
            completionHandler(responseModel)
            
        }
        
    }
    
    //RequestModel - ResponseModel
    func add<PostData : Codable>(url:String, postData: PostData, completionHandler: @escaping (ResponseBaseModel) -> Void){
        
        
        
        AF.request(baseUrl + url, method: .post, parameters: postData, encoder: JSONParameterEncoder.default)
                .responseDecodable(of: T.self){ response in
                    
                    var responseModel = ResponseBaseModel()
                    
                    
                    responseModel.statusCode = response.response?.statusCode ?? 0
                    responseModel.errorMessage = ""
                    responseModel.data = response.value!
                    
                    
                    completionHandler(responseModel)
                
            
                }
    }
    
}
