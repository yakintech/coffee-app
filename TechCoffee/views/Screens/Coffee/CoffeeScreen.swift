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
                
                ForEach(CoffeeList.coffees , id: \.self) { coffee in
                    
                    NavigationLink(destination: HomeScreen(), label: {
                        
                        CoffeeCell(coffee: coffee)
                        
                    })
                }
            }
            .listStyle(.plain)
        }
    }
}

struct CoffeeCell: View {
    
    var coffee: CoffeeListItemModel
    
    var body: some View {
        
        HStack {
            
            Image(coffee.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            
            Text(coffee.description)
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
