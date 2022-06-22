//
//  LaunchSreen.swift
//  TechCoffee
//
//  Created by Muhammed Selimhan gülsever on 22.06.2022.
//

import SwiftUI

struct LaunchSreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    
    var body: some View {
        if isActive {
            ContentView()
        }
        else{
            VStack {
                VStack {
                    VStack{
                        Image("LaunchScreenIcon")
                            .background(Image("LaunchScreenBackground"))
                            
                        Text("CoffeeApp")
                            .font(Font.custom("Baskerville-Bold", size: 40))
                            .foregroundColor(.black.opacity(0.80))
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }
                
            }
        }
        
        
    }
}

struct LaunchSreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchSreen()
    }
}
