//
//  LoginScreen.swift
//  TechCoffee
//
//  Created by Alpsu Dilbilir on 21.06.2022.
//

import SwiftUI


struct LoginScreen: View {
    @EnvironmentObject var vm : ProfileViewModel
    @State var userModel = UserModel()
    @State var password: String = ""
    @State private var showAlert = false
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Welcome Back!")
                        .font(.system(size: 28))
                        .fontWeight(.semibold)
                        .foregroundColor(.coffee)
                    Spacer()
                }
                .padding()
                CustomTextField(prompt: "Email", text: $userModel.email)
                CustomSecureField(prompt: "Password", text: $password)
                HStack {
                    Spacer()
                    Button {
                        //Forgot your password Action
                    } label: {
                        Text("Forgot your password?")
                            .font(.callout)
                            .foregroundColor(.coffee)
                    }
                }
                .padding()
                Spacer().frame(height: 30)
                Button {
                    if vm.isValidEmail(email: userModel.email) && vm.isValidPassword(password: password) {
                       UserDefaultService.shared.setUserModel(userModel: userModel)
                        vm.currentUser = userModel
                        vm.isUserLoggedOut = false

                    } else {
                        showAlert = true
                    }
                } label: {
                    Text("Login")
                        .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 60)
                        .font(.system(size: 20))
                        .background(Color.coffee)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .padding(.horizontal)
                }
                Spacer()
            }
            .padding(.vertical)
        }
        .alert("Invalid email or password", isPresented: $showAlert) {
            //OK
        } message: {
            Text("Please check your email or password.")
        }
    }
}



struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}


