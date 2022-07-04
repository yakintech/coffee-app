//
//  Tab.swift
//  TechCoffee
//
//  Created by Çağatay Yıldız on 19.06.2022.
//

import SwiftUI

struct Tab: View {
    
    //    @State var onBoard : Bool = false
    //    @State var selectedTab = 1
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color.white) // custom color.
        UIToolbar.appearance().barTintColor = .white
        
    }
    
    var body: some View {
        
        VStack{
            ZStack{
                TabView {
                    
                    NavigationView{
                        HomeScreen()
                            .navigationTitle("Home")
                            .navigationViewStyle(.automatic)
                            .toolbar {
                                ToolbarItem (placement: .bottomBar){
                                    HStack{
                                    Button() {
                                        
                                    } label: {
                                        Image(systemName: "plus.circle")
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                            
                                    }
                                        
                                    .buttonStyle(.borderedProminent)
                                    .clipShape(Circle())
                                    .shadow(radius: 12)
                                    .overlay(Circle().stroke(Color.white, lineWidth: 1))
                                }
                                }
                            
                            }
                        
                        
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
                        Image(systemName: "cup.and.saucer")
                    }
                    
                    
                    NavigationView{
                        Text("Notification Screen")
                            .navigationTitle("Notifications")
                    }
                    .tabItem{
                        Text("Notifications")
                        Image(systemName: "bell")
                    }
                    
                    
                    NavigationView{
                        ProfileScreen()
                            .animation(Animation.default)
                            .transition(.move(edge: .bottom))
                            .navigationBarHidden(true)
                        
                    }
                    .tabItem(){
                        Text("Profile")
                        Image(systemName: "person")
                    }
                    
                }.accentColor(.coffee)
                
            }
        }
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}

