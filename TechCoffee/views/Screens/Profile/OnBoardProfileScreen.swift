//
//  OnBoardProfileScreen.swift
//  TechCoffee
//
//  Created by Sefa DİNÇER on 23.06.2022.
//

import SwiftUI

struct OnBoardProfileScreen: View {
    
    private let images = ["CoffeeTimeCar","CoffeeTimeCar"]
    
    let userDefaultService = UserDefaultService();
    
    
    init(){
        //userDefaultService.getUserModel() == nil ? nil : NavigationLink{};
    }
    
    
    var body: some View {
        VStack(spacing: 0){
            TabView {
                        ForEach(images, id: \.self) { item in
                             //3
                             Image(item)
                                .scaledToFill()
                        }
            }
            .aspectRatio(1,contentMode: ContentMode.fit)
            .tabViewStyle(PageTabViewStyle())
            .frame(maxWidth: .infinity)
            Rectangle().frame(width:0,height: 30)
            Text("Get the best coffee \nin town!")
                .font(.custom("sf-ui-display-semibold", size:34 ))
                .font(.largeTitle)
                .multilineTextAlignment(TextAlignment.center)
                .frame(maxWidth: .infinity)
            Rectangle().frame(width:0,height: 30)
            VStack{
                NavigationLink{LoginAndRegisterScreen(selectedScreen: "Register")}label: {
                    Text("Register")
                        .font(.custom("sf-ui-display-semibold",size: 18))
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color(red: 185 / 255, green: 128 / 255, blue: 104 / 255))
                        .cornerRadius(30)
                }
                NavigationLink{
                    LoginAndRegisterScreen(selectedScreen: "Login")
                }label: {
                    Text("Log In")
                        .font(.custom("sf-ui-display-semibold",size: 18))
                        .foregroundColor(Color(red: 185 / 255, green: 128 / 255, blue: 104 / 255))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 30)
                        .stroke(Color(red: 185 / 255, green: 128 / 255, blue: 104 / 255), lineWidth: 5)
                    ).cornerRadius(30)
                }
            }.padding(30)
            
            Spacer()
        }.frame(alignment: Alignment.top)
    }
}

struct OnBoardProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardProfileScreen()
    }
}
