//
//  CoffeeScreen.swift
//  TechCoffee
//
//  Created by BusranurOK on 21.06.2022.
//

import SwiftUI



struct CoffeeScreen: View {
    
    @State var coffees = [CoffeeListItemModel]()
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
        .onAppear(){
            print("DATA")
        let genericNetwork = GenericNetwork<CoffeeNetworkModel>()

           genericNetwork.getAll(url:"/coffees"){ response in
               
               let data = response.data as! CoffeeNetworkModel
               
               var model = CoffeeListItemModel()
               model.coffeeName = data.coffeeName
               model.imageName = data.imageName
               
               coffees.append(model)


            }
        }
    }
}

struct CoffeeCell: View {
    var coffees: CoffeeListItemModel
    var body: some View {
        HStack {
            Image(coffees.imageName)
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

