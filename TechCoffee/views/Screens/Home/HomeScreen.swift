//
//  HomeScreen.swift
//  TechCoffee
//
//  Created by Çağatay Yıldız on 19.06.2022.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var name = ""
    @State var userModel : UserModel = UserModel()
    
    var body: some View {
        VStack{
            Text(userModel.name)
                .padding()
            
            Text(userModel.surname)
                .padding()
            
            Text(userModel.email)
                .padding()
            
//            Text(name)
        }
        .onAppear(){
            
            let userDefaultService = UserDefaultService()
            name = userDefaultService.getUserName()
            
            userModel = userDefaultService.getUserModel()
            
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
