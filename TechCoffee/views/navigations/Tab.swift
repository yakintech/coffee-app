//
//  Tab.swift
//  TechCoffee
//
//  Created by Çağatay Yıldız on 19.06.2022.
//

import SwiftUI

struct Tab: View {
    
    @State var onBoard : Bool = false
    @State var selectedTab = 1
    
    
    var body: some View {
        
        VStack{
            if onBoard && selectedTab == 4{
                HStack(alignment: VerticalAlignment.top){
                    Button(action: {
                        withAnimation{
                            self.selectedTab = 1;
                            self.onBoard = false;
                        }
                    }){
                        Image(systemName: "xmark").foregroundColor(Color(red: 185 / 255, green: 128 / 255, blue: 104 / 255))
                    }.padding(.leading, 20)
                    Spacer()
                }
            }
            ZStack{
                TabView(selection: $selectedTab){
                    
                    NavigationView{
                        HomeScreen()
                            .navigationTitle("Home")
                    }
                    .tabItem{
                        Text("Home")
                        Image(systemName: "house")
                    }.tag(1)
                    
                    
                    NavigationView{
                        CoffeeScreen()
                            .navigationTitle("Coffee")
                            .navigationBarTitleDisplayMode(.inline)
                    }
                    .tabItem{
                        Text("Coffee")
                        Image(systemName: "home")
                    }.tag(2)
                    
                    
                    NavigationView{
                        Text("Notification Screen")
                            .navigationTitle("Notifications")
                    }
                    .tabItem{
                        Text("Home")
                        Image(systemName: "home")
                    }.tag(3)
                    
                    
                    NavigationView{
                        //ProfileScreen()
                        /*ProfileScreen()
                         .navigationTitle("Profile")*/
                    }
                    .tabItem(){
                        Text("Profile")
                        Image(systemName: "home")
                    }.tag(4)
                    
                    
                    
                }.onChange(of: selectedTab){ newValue in
                    print("yazdı")
                    
                    self.onBoard = true;
                    
                }
                
                if onBoard && selectedTab == 4{
                    NavigationView{
                        ProfileScreen()
                            .animation(Animation.default)
                            .transition(.move(edge: .bottom))
                    }
                }
                
                
                
                
            }
        }
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}

