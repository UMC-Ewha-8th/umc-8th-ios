//
//  LoginViewModel.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 3/24/25.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var id : String = ""
    @Published var pwd : String = ""
    
    @AppStorage("userData") private var userData: Data?
    @AppStorage("isLoggedIn") private var isLoggedIn: Bool = false
    
    func login() -> Bool {
        guard let data = userData,
              let decoded = try? JSONDecoder().decode(SignupModel.self, from: data) else {
            return false
        }
        if id == decoded.email && pwd == decoded.password {
            isLoggedIn = true
            return true
        } else{
            return false
        }
    }
}
