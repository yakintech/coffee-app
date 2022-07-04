//
//  HomeScreenViewModel.swift
//  TechCoffee
//
//  Created by baskurthalit on 4.07.2022.
//

import Foundation

final class HomeScreenVM {
    var postList : [CoffePostModel] = []
    
    let postNetworkManager: GenericNetwork<CoffePostModel> = GenericNetwork<CoffePostModel>()
    
    
    /*
     Fetch data from network, parse and show in HomeScreen.
     */
    
}
