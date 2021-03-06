//
//  RegisterScreen.swift
//  TechCoffee
//
//  Created by Alpsu Dilbilir on 21.06.2022.
//

import SwiftUI

struct RegisterScreen: View {
    @EnvironmentObject var vm : ProfileViewModel
    @State var userModel = UserModel()
    @State var showAlert = false
    @State var showConfirmationScreen = false
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Create an Account")
                        .font(.system(size: 28))
                        .fontWeight(.semibold)
                        .foregroundColor(.coffee)
                    Spacer()
                }
                .padding()
                CustomTextField(  prompt:   "First name", text: $userModel.name)
                CustomTextField(  prompt:   "Last name",  text: $userModel.surname)
                CustomTextField(  prompt:   "Email",      text: $userModel.email)
                CustomSecureField(prompt:   "Password",   text: $userModel.password)
                Spacer().frame(height: 30)
                Button {
                    
                    
                    if vm.isValid(user: userModel) {
                        let genericNetwork = GenericNetwork<RegisterNetworkResponseModel>()
                        var registerRequestModel = RegisterNetworkRequestModel()
                        registerRequestModel.firstName = userModel.name
                        registerRequestModel.lastName = userModel.surname
                        registerRequestModel.email = userModel.email
                        registerRequestModel.password = userModel.password
                        vm.currentUser = userModel
                        vm.isUserLoggedOut = false
                        
                        
                        genericNetwork.add(url: "/register", postData: registerRequestModel){response in
                            
                        }
                        showConfirmationScreen = true
                    } else {
                        showAlert = true
                    }
                } label: {
                    Text("Register")
                        .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 60)
                        .background(Color.coffee)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .padding(.horizontal)
                }
                Spacer()
            }
            .sheet(isPresented: $showConfirmationScreen, content: {
                ConfirmationScreen(email: userModel.email)
            })
            .alert("Registiration Fail", isPresented: $showAlert) {
                //
            } message: {
                Text("Please fill the all labels correctly.")
            }
        }
    }
}

