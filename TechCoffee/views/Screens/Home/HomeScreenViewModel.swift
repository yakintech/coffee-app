//
//  HomeScreenViewModel.swift
//  TechCoffee
//
//  Created by baskurthalit on 4.07.2022.
//

import Foundation

final class HomeScreenVManager {
    var postList : [CoffePostModel] = []
    
    var delegate: PostViewDelegate?
    
    let postNetworkManager: GenericNetwork<CoffePostModel> = GenericNetwork<CoffePostModel>()
    
    
    static func ft_FetchData(){
            //some network calls
//        then.
        
//        delegate?.ft_UpdateData(postList)
        
    }
    
    
    /*
     Fetch data from network, parse and show in HomeScreen.
     */
    
}
