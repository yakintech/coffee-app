//
//  CustomPostCell.swift
//  TechCoffee
//
//  Created by Alpsu Dilbilir on 22.07.2022.
//

import SwiftUI

struct CustomPostCell: View {
    let title:String = ""
    var post: CoffePostModel
    let imageName: String
    @State var isFavorite = true
    
    var body: some View {
        
        VStack(spacing: 0){
            
                
            Image(imageName)
                .resizable()
                .scaledToFill()
                
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
                Image(systemName: "heart.fill")
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

