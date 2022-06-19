//
//  ProfileScreen.swift
//  TechCoffee
//
//  Created by Çağatay Yıldız on 19.06.2022.
//

import SwiftUI

struct ProfileScreen: View {
    
    @State var name : String = ""
    
    @State var userModel : UserModel = UserModel();
    
    var body: some View {
        
        VStack{
            
            TextField("Name", text: $userModel.name)
                .padding()
            
            TextField("Surname", text: $userModel.surname)
                .padding()
            
            
            TextField("EMail", text: $userModel.email)
                .padding()
            
            
            Button("Save to User Defaults"){
                
                let userDefaultService = UserDefaultService()
                userDefaultService.setUserModel(userModel: userModel)
                
            }
            
            
//            TextField("Name", text: $name)
//                .padding()
//
//            Button("Set User Name"){
//
//                let userDefaultService = UserDefaultService()
//
//                userDefaultService.setUserName(name: name)
//            }
//
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
