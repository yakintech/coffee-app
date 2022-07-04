//
//  UserInfo.swift
//  TechCoffee
//
//  Created by baskurthalit on 4.07.2022.
//

import SwiftUI

struct UserInfo: View {
    var user: UserModel!
    
    var body: some View {
        VStack{
            HStack(alignment: .top){
                Image("avatarPlaceHolder")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .center)
                    .clipShape(Circle())
                    .shadow(radius: 5)
                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                    

                
                VStack(alignment:.leading){
                    Text("Good Morning ☀️ ")                
                    Text("Brooklyn Simsons")
                        .font(.largeTitle)
                }
            }
        }
    }
}

struct UserInfo_Previews: PreviewProvider {
    static var previews: some View {
        UserInfo()
    }
}
