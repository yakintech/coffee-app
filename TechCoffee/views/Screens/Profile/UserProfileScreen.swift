//
//  UserProfileScreen.swift
//  TechCoffee
//
//  Created by Alpsu Dilbilir on 21.07.2022.
//

import SwiftUI

struct UserProfileScreen: View {
    @EnvironmentObject var vm : ProfileViewModel
    @Environment(\.refresh) private var action
    @State var title: String = "Coffee Lover"
    @State var selectedPage = "Favorites"
    let selections = ["Favorites", "Posts"]
    
    let posts: [CoffePostModel] = [
        CoffePostModel(id: 1, postImageUrl: "coffee2", postedTime: "2 day", user: UserModel(name: "Alp", surname: "Dilbilir", email: "Favorite", password: "Favorite"))
    ]
    let favoritesList: [CoffePostModel] = [
        CoffePostModel(id: 1, postImageUrl: "Coffe1", postedTime: "1 day", user: UserModel(name: "Arthur ", surname: "My surname", email: "asdasdasd", password: "asdasdasd")),
        CoffePostModel(id: 2, postImageUrl: "coffee3", postedTime: "Deneme", user: UserModel(name: "John", surname: "My surname", email: "asdasdasd", password: "asdasdasd")),
        CoffePostModel(id: 3, postImageUrl: "coffee4", postedTime: "Deneme", user: UserModel(name: "Tommy", surname: "My surname", email: "asdasdasd", password: "asdasdasd"))]
    
    @State var showConfirmationDialog = false
    var body: some View {
        VStack {
            if vm.isUserLoggedOut {
                ProfileScreen()
                    .environmentObject(vm)
            } else {
                if let user = vm.currentUser {
                    topBar
                    userView
                    picker
                    
                    if selectedPage == "Favorites" {
                        favorites
                    } else {
                        userPosts
                    }
                    Spacer()
                    
                }
            }
        }
        .confirmationDialog("Sign Out", isPresented: $showConfirmationDialog) {
            Button(role: .destructive) {
                UserDefaultService.shared.deleteUserModel()
                vm.isUserLoggedOut = true
            } label: {
                Text("Sign Out")
            }
            Button(role: .cancel) {}
        label: {
            Text("Cancel")
        }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    private var picker: some View {
        Picker("Selection", selection: $selectedPage) {
            ForEach(selections, id: \.self) {
                Text($0)
            }
        }
        .padding()
        .colorMultiply(.white)
        .pickerStyle(SegmentedPickerStyle())
        .onAppear {
            UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(.coffee)
            UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(.white)], for: .selected)
            UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(Color.coffee)], for: .normal)
        }
        
    }
    private var userView: some View {
        HStack {
            RoundedRectangle(cornerRadius: 50)
                .stroke()
                .background(Color.gray.opacity(0.4).blur(radius: 10))
                .cornerRadius(50)
                .frame(width: 65, height: 65)
                .foregroundColor(.coffee)
                .overlay {
                    Image("Cappuccino")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                }
            VStack(alignment: .leading, spacing: 0) {
                if let user = vm.currentUser {
                    Text("Welcome Back\n" + "\(user.name) " + "\(user.surname)")
                        .foregroundColor(.coffee)
                        .font(.title)
                        .bold()
                    TextField("", text: $title)
                        .disabled(true)
                        .foregroundColor(.gray)
                        .font(.system(.callout, design: .monospaced))
                }
              
            }
            
            Spacer()
        }.padding(.horizontal)
    }
    private var topBar: some View {
        HStack {
            Spacer()
            Button {
                showConfirmationDialog = true
            } label: {
                Image(systemName: "gear")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.coffee)
            }
        }.padding()
    }
    private var userPosts: some View {
        ScrollView {
            ForEach(posts, id: \.self) { post in
                CustomPostCell(post: post, imageName: post.postImageUrl)
                    .padding()
            }
        }
        
    }
    private var favorites: some View {
        ScrollView {
            ForEach(favoritesList, id: \.self) { favorite in
                CustomPostCell(post: favorite, imageName: favorite.postImageUrl )
                    .padding()
            }
        }
        
    }
}

struct UserProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileScreen()
            .environmentObject(ProfileViewModel())
    }
}
