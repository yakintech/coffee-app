//
//  LoginAndRegisterScreen.swift
//  TechCoffee
//
//  Created by Alpsu Dilbilir on 21.06.2022.
//

import SwiftUI
struct LoginAndRegisterScreen: View {
    @EnvironmentObject var vm : ProfileViewModel
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var selectedScreen: String
    let screens = ["Login", "Register"]

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
            .onAppear {
                vm.customizePicker()
            }
            if selectedScreen == "Login" {
                LoginScreen()
            } else {
                RegisterScreen()
            }
        }.environmentObject(vm)
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
        LoginAndRegisterScreen(selectedScreen: "Login")
    }
}
