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

    let trueCode = "1234" // This code must be fetched from api.
    
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
                SecureCodeVerifier(code: trueCode)
                            .onCodeFilled { isCodeCorrect in
                                if isCodeCorrect {
                                    print("Confirmed")
                                    self.presentationMode.wrappedValue.dismiss()
                                } else {
                                    
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

struct ConfirmationScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationScreen()
    }
}
