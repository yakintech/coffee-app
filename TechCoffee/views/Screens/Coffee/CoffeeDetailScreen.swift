//
//  CoffeeDetailScreen.swift
//  TechCoffee
//
//  Created by Ömer Faruk Kazar on 22.06.2022.
//

import Foundation
import SwiftUI
import MapKit

struct CoffeDetailScreen: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 45.438759, longitude: 12.327145),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25))
    
    struct Coffee: Identifiable {
        let id = UUID()
        let coffeeImage: String
        let coffeeName: String
        let coffeeInfo: String
        let region: [Double]
    }
    
    
    struct CoffeeList {
        static let coffeeDetail = [
            Coffee(coffeeImage: "EspressoDetail",
                   coffeeName: "Espresso",
                   coffeeInfo: "Espresso, (Italian: “fast, express”) a strong brew of coffee produced by forcing boiled water under pressure through finely ground coffee. The finely ground coffee beans means an increased amount of surface contact with the water, resulting in a highly flavoured and aromatic brew. The nuances of brewing and enjoying the drink have spurred international barista championships and detailed discussions of the drink by aficionados worldwide. Espresso is especially associated with Italy, where it is woven into the fabric of daily life.",
                   region: [45.438759,12.327145]),
            
            Coffee(coffeeImage: "EspressoDetail",
                   coffeeName: "Cappuccino",
                   coffeeInfo: "A cappuccino is an espresso-based coffee drink that originated in Austria with later development taking place in Italy, and is prepared with steamed milk foam (microfoam).Variations of the drink involve the use of cream instead of milk, using non-dairy milk substitutes and flavoring with cinnamon or chocolate powder. It is typically smaller in volume than a caffè latte, with a thicker layer of microfoam. The name comes from the Capuchin friars, referring to the colour of their habits, and in this context referring to the colour of the beverage when milk is added in small portion to dark, brewed coffee[ (today mostly espresso). The physical appearance of a modern cappuccino with espresso créma and steamed milk is a result of a long evolution of the drink.",
                   region: [45.438759,12.327145]),
            
            Coffee(coffeeImage: "EspressoDetail",
                   coffeeName: "Macciato",
                   coffeeInfo: "Caffè macchiato sometimes called espresso macchiato, is an espresso coffee drink with a small amount of milk, usually foamed. In Italian, macchiato means stained or spotted, so the literal translation of caffè macchiato is stained coffee or marked coffee The origin of the name macchiato stems from baristas needing to show the serving waiters the difference between an espresso and an espresso with a tiny bit of milk in it; the latter was marked. The idea is reflected in the Portuguese name for the drink: café pingado, meaning coffee with a drop.",
                   region: [45.438759,12.327145]),
            
            Coffee(coffeeImage: "EspressoDetail",
                   coffeeName: "Mocha",
                   coffeeInfo: "the mocha is short for a “mocha latte” or a “caffe mocha,” which is just a regular latte with chocolate syrup added to it. One of the great reasons why many coffee fanatics love the latte is because they are customizable, and the mocha is a prime example of that. As far as ingredients are concerned, as well as the size of the drink, there’s anywhere from 1-4 pumps of chocolate syrup, 2-4 shots of espresso, and steamed milk with a little bit of milk foam. ",
                   region: [45.438759,12.327145]),
            
            Coffee(coffeeImage:
                    "EspressoDetail",
                   coffeeName: "Latte",
                   coffeeInfo: "A caffè latte (commonly referred to as a Latte) is a coffee drink, made with a shot of espresso, steamed milk, and it’s topped with a milk microfoam layer of around 0.2 to 0.4 inches (0.5 to 1 cm). A Latte is served in an 8 fl. oz. to 12 fl. oz. (240 ml. to 350 ml.) cup. It’s usually topped off with latte art (such as the classic design of a heart, tulip, or a rosetta).",
                   region: [45.438759,12.327145])
            
            
        ]
        
    }
    
    
    var body: some View {
        VStack{
            VStack{
                Map(coordinateRegion: $region)
            }
            Spacer()
            ScrollView{
                VStack{
                    
                    Image(CoffeeList.coffeeDetail[0].coffeeImage).resizable().scaledToFill().frame(width: 150.0, height: 150.0)
                    
                    Text(CoffeeList.coffeeDetail[0].coffeeInfo)
                        .fontWeight(.medium)
                        .font(.body)
                        .foregroundColor(Color.black)
                        .padding()
                }
            }
        }
    }
    struct CoffeDetailScreen_Previews: PreviewProvider {
        static var previews: some View {
            CoffeDetailScreen()
        }
    }
    
}

