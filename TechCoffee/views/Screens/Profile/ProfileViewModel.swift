//
//  ProfileViewModel.swift
//  TechCoffee
//
//  Created by Alpsu Dilbilir on 22.06.2022.
//

import Foundation
import SwiftUI

extension Color {
    static let coffee = Color("coffee")
}

class ProfileViewModel {
    
    func customizePicker() {
       UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(.white)
       UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(.coffee)], for: .selected)
       UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
    }
    
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    func isValidPassword(password: String) -> Bool {
        return password.count >= 6 ? true : false
    }
    
    func isFieldEmpty(input: String) -> Bool {
        return input.isEmpty
    }
}
