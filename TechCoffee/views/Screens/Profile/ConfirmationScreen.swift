//
//  ConfirmationScreen.swift
//  TechCoffee
//
//  Created by Alpsu Dilbilir on 3.07.2022.
//

import SwiftUI
import CodeVerifier

struct ConfirmationScreen: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var vm: ProfileViewModel
    @State var isConfirmed = false

    @State var confirmCode : String = ""
    var email : String
    
    
    var body: some View {
        VStack(spacing: 40) {
            Image(systemName: "mail.stack")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.coffee)
            Text("Verification code sent to your mail. Please enter 4 digit code.")
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .font(.title2)
                .foregroundColor(.secondary)
            ZStack {
                TextField("Confirm Code", text: $confirmCode)
                    .padding()
                Button("Confirm") {
                    var confirmRequestModel = ConfirmCodeRequestModel()
                    confirmRequestModel.email = email
                    confirmRequestModel.confirmCode = confirmCode
                    
                    let genericNetwork = GenericNetwork<ConfirmCodeResponseNetworkModel>()
                    
                    genericNetwork.add(url: "/confirm", postData: confirmRequestModel){response in
                        
                        if(response.statusCode == 200){
                            
                            let data = response.data as! ConfirmCodeResponseNetworkModel
                            
                            let loginModel = LoginModel(email: data.email)
                            let userDefaultService = UserDefaultService()
                            userDefaultService.setLogin(loginModel: loginModel)
                            
                            if let user = vm.currentUser {
                                UserDefaultService.shared.setUserModel(userModel: user)

                                self.presentationMode.wrappedValue.dismiss()
                                isConfirmed = true
                            }
                  
                            
                        }else if(response.statusCode == 404){
                            if let user = vm.currentUser {
                                UserDefaultService.shared.setUserModel(userModel: user)
                                self.presentationMode.wrappedValue.dismiss()
                                isConfirmed = true
                            }
                        }
                        else{
                            print("Sistemde hata meydana geldi!")
                        }
                    }
                }.onDisappear {
                    if isConfirmed {
                        vm.isUserLoggedOut = false
                    }
                }
            }
            Button {
                self.presentationMode.wrappedValue.dismiss()
            } label: {
                Text("Cancel")
                    .bold()
                    .frame(maxWidth: .infinity, minHeight: 40, maxHeight: 50)
                    .font(.system(size: 20))
                    .background(Color.coffee)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    .padding(.horizontal)
            }
            Spacer()
        }.padding()
    }
}

