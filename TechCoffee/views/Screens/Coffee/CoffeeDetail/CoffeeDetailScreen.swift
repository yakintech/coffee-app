//
//  CoffeeDetailScreen.swift
//  TechCoffee
//
//  Created by Ömer Faruk Kazar on 22.06.2022.
//

import Foundation
import SwiftUI
import MapKit

struct CoffeeDetailScreen: View {
    var coffees: CoffeeListItemModel
    
    var body: some View {
        ScrollView {
            MapView(coordinate: coffees.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            coffees.detailImage
              .frame(width: 150.0, height: 150.0)
            
            VStack(alignment: .leading) {
                Text(coffees.coffeeName)
                    .font(.title)

                Divider()

                Text("About \(coffees.coffeeName)")
                    .font(.title2)
                Text(coffees.description)
            }
            .padding()
        }
        .navigationTitle(coffees.coffeeName)
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct CoffeDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeDetailScreen(coffees: coffees[0])
    }
}

