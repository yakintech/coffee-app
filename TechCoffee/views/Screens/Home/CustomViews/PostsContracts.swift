//
//  PostsContracts.swift
//  TechCoffee
//
//  Created by baskurthalit on 4.07.2022.
//

import Foundation

protocol PostViewDelegate  {
    mutating func ft_UpdateData(_ posts: [CoffePostModel])
    func ft_DidFinishWithErorr(_ error:Error)
}
