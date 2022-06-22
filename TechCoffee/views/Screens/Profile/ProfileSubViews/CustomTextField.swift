//
//  CustomTextField.swift
//  TechCoffee
//
//  Created by Alpsu Dilbilir on 21.06.2022.
//

import SwiftUI

struct CustomTextField: View {
    @State var prompt: String
    @Binding var text: String
    var body: some View {
        VStack {
            HStack {
                TextField(prompt, text: $text)
                    .disableAutocorrection(true)
                    .textInputAutocapitalization(.never)
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

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(prompt: "Write here!", text: .constant(""))
    }
}
