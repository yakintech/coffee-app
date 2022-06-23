//
//  CustomSecureField.swift
//  TechCoffee
//
//  Created by Alpsu Dilbilir on 21.06.2022.
//

import SwiftUI

struct CustomSecureField: View {
    @State var prompt: String
    @Binding var text: String
    @State var isUncorrect = false
    var body: some View {
        VStack {
            HStack {
                SecureField(prompt, text: $text)
                Spacer()

            }
            .padding(.horizontal)
            
            Divider()
                .frame(maxWidth: .infinity, maxHeight: 1.5)
                .overlay(Color("coffee"))
                .padding(.horizontal)
        }
        .padding(.vertical)
    }
}

struct CustomSecureField_Previews: PreviewProvider {
    static var previews: some View {
        CustomSecureField(prompt: "Password", text: .constant(""))
    }
}
