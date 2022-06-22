//
//  LoginAndRegisterScreen.swift
//  TechCoffee
//
//  Created by Alpsu Dilbilir on 21.06.2022.
//

import SwiftUI
struct LoginAndRegisterScreen: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    let screens = ["Login", "Register"]
    @State var selectedScreen: String = "Login"
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(.white)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(.coffee)], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
    }
    var body: some View {
        VStack {
            Picker("Login or Register", selection: $selectedScreen) {
                ForEach(screens, id: \.self) {
                    Text($0)
                }
            }
            .padding()
            .colorMultiply(.white)
            .background(Color.coffee)
            .pickerStyle(SegmentedPickerStyle())
            if selectedScreen == "Login" {
                LoginScreen()
            } else {
                RegisterScreen()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "chevron.left")
                .foregroundColor(.white)
        }))
    }
}

struct Login_RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginAndRegisterScreen()
    }
}
