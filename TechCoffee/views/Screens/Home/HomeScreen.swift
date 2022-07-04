//
//  HomeScreen.swift
//  TechCoffee
//
//  Created by Çağatay Yıldız on 19.06.2022.
//

import SwiftUI
import MapKit

struct HomeScreen: View {
    
    //    @State var userModel : UserModel = UserModel()
    @State var CoffePosts: [CoffePostModel] = [CoffePostModel(id: 1, postImageUrl: "Deneme", postedTime: "Deneme", user: UserModel(name: "My name", surname: "My surname", email: "asdasdasd", password: "asdasdasd")),CoffePostModel(id: 1, postImageUrl: "Deneme", postedTime: "Deneme", user: UserModel(name: "My name", surname: "My surname", email: "asdasdasd", password: "asdasdasd")),CoffePostModel(id: 1, postImageUrl: "Deneme", postedTime: "Deneme", user: UserModel(name: "My name", surname: "My surname", email: "asdasdasd", password: "asdasdasd")),CoffePostModel(id: 1, postImageUrl: "Deneme", postedTime: "Deneme", user: UserModel(name: "My name", surname: "My surname", email: "asdasdasd", password: "asdasdasd"))]
    
    var body: some View {        
        ScrollView{
            VStack(alignment: .leading){
                HStack{
                    UserInfo()
                        .padding()
                    Spacer()
            
                }
                
                ForEach(CoffePosts , id: \.self) { coffePost in
                    PostCell(post: coffePost)
                        .padding()
                }
            }
        }
        .onAppear {
            
        }
    }
    init(){
        
    }
    
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}




