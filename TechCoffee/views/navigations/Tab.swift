//
//  Tab.swift
//  TechCoffee
//
//  Created by Çağatay Yıldız on 19.06.2022.
//

import SwiftUI

struct Tab: View {
    
    var body: some View {
        
        TabView{
            
            NavigationView{
                HomeScreen()
                    .navigationTitle("Home")
            }
            .tabItem{
                Text("Home")
                Image(systemName: "house")
            }
            
            
            NavigationView{
                CoffeeScreen()
                    .navigationTitle("Coffee")
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem{
                Text("Coffee")
                Image(systemName: "home")
            }
            
            
            NavigationView{
                Text("Notification Screen")
                    .navigationTitle("Notifications")
            }
            .tabItem{
                Text("Home")
                Image(systemName: "home")
            }
            
            
            NavigationView{
                ProfileScreen()
                    .navigationTitle("Profile")
            }
            .tabItem{
                Text("Profile")
                Image(systemName: "home")
            }
              
        }
    }
}


