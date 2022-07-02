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
    
    func getAll(url:String, completionHandler: @escaping ([T]) -> Void){
        
        let request = AF.request(baseUrl + url)
        
        request.responseDecodable(of: [T].self){response in
            
            completionHandler(response.value!)
            
        }
        
    }
    
    
    func add<PostData : Codable>(url:String, postData: PostData, completionHandler: @escaping (T) -> Void){
        
        
        
        AF.request(baseUrl + url, method: .post, parameters: postData, encoder: JSONParameterEncoder.default)
                .responseDecodable(of: T.self){ response in
                    
                    //Data eklendikten sonra eklenen datayı completion handler aracılığıyla iletiyorum
                    completionHandler(response.value!)
            
                }
    }
    
}
