//
//  CoffeeScreen.swift
//  TechCoffee
//
//  Created by BusranurOK on 21.06.2022.
//

import SwiftUI

struct CoffeeScreen: View {
    
    var body: some View {
        VStack() {
            List {
                ForEach(coffees , id: \.self) { coffees in
                    NavigationLink(destination: CoffeeDetailScreen(coffees: coffees),
                                   label: {
                        CoffeeCell(coffees: coffees)
                    })
                }
            }
            .listStyle(.plain)
        }
    }
}

struct CoffeeCell: View {
    var coffees: CoffeeListItemModel
    var body: some View {
        HStack {
            coffees.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
    
            Text(coffees.coffeeName)
                .fontWeight(.semibold)
                .font(.body)
                .foregroundColor(Color.black)
                .padding(.horizontal, 10)
            
            Spacer()
            
        }
        .padding()
        
    }
}

struct CoffeeScreen_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeScreen()
    }
}

