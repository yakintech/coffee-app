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

    @State var showConfirmationDialog = false
    var body: some View {
            VStack {
                if vm.isUserLoggedOut {
                    ProfileScreen()
                         .environmentObject(vm)
                } else {
                    if let user = vm.currentUser {
                        HStack {
                            Spacer()

                            Button {
                                showConfirmationDialog = true
                            } label: {
                                Image(systemName: "gear")
                                    .foregroundColor(.coffee)
                            }
                        }.padding()
                        Spacer()
                        Text("Something should be here.")
                        Text(vm.currentUser?.email ?? "Unkown")
                        Text(vm.currentUser?.name ?? "Unkown")
                        Text(vm.currentUser?.surname ?? "Unkown")
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
}

struct UserProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileScreen()
            .environmentObject(ProfileViewModel())
    }
}
