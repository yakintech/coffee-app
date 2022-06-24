//
//  ProfileScreen.swift
//  TechCoffee
//
//  Created by Çağatay Yıldız on 19.06.2022.
//

import SwiftUI

struct ProfileScreen: View {
    
    private let images = ["login-screen-img1","login-screen-img2"]
    
    let userDefaultService = UserDefaultService();
    
    
    init(){
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor.init(red: 185 / 255, green: 128 / 255, blue: 104 / 255, alpha: 1);
        UIPageControl.appearance().pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2);
        //userDefaultService.getUserModel() == nil ? nil : NavigationLink{};
    }
    
    
    var body: some View {
        VStack(spacing: 0){
            ZStack{
                    Image("login-screen-background")
                        .resizable()
                        //.frame(width:geo.size.width)
                        .aspectRatio(1,contentMode: ContentMode.fit)
                    TabView {
                        ForEach(images, id: \.self) { item in
                                Image(item)
                                    .resizable()
                                    .padding(.all,30)
                        }
                    }
                    .aspectRatio(1,contentMode: ContentMode.fit)
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                }
            Spacer()
            //Rectangle().frame(width:0,height: 30)
            Text("Get the best coffee \nin city!")
                .foregroundColor(Color(red: 185 / 255, green: 128 / 255, blue: 104 / 255))
                .font(Font.custom("sf-ui-display-semibold", size:30 ))
                .font(.largeTitle)
                .multilineTextAlignment(TextAlignment.center)
                .frame(maxWidth: .infinity)
            Spacer()
            //Rectangle().frame(width:0,height: 30)
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
        ProfileScreen()
    }
}

