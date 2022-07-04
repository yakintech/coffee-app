//
//  TechCoffee
//
//  Created by baskurthalit on 4.07.2022.
//

import SwiftUI

struct PostCell: View {
    let title:String = ""
    var post: CoffePostModel
    
    var body: some View {
        
        VStack(){
            
                
            Image("Coffe1")
                .frame(width: 260, height: 330, alignment: .center)
                .padding()
            HStack{
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: .center)
                    .foregroundColor(Color(UIColor(.white)))
                
                VStack(alignment: .leading){
                    Text(post.user.name)
                        .font(.headline)
                        .foregroundColor(Color(UIColor(.white)))
                    Text("\(Image(systemName: "location")) TR")
                        .font(.caption)
                        .foregroundColor(Color(UIColor(.white)))
                    Text(post.postedTime)
                        .foregroundColor(.white)
                        .font(.caption2)


                }
                Spacer()
                Image(systemName: "star")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .top)
                    .foregroundColor(Color(UIColor(.white)))
            }
            .padding()
            .background {
                Color("coffee")
            }
   
        }
        .cornerRadius(12)
        
    }
}

//
//struct Post_Cell_Prewies: PreviewProvider {
//    static var previews: some View {
////        PostCell(coffe: CoffeeListItemModel())
//    }
//}
