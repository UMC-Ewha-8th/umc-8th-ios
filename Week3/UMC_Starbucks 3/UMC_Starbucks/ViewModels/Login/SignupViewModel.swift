//
//  SignupViewModel.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 3/26/25.
//

import Foundation
import SwiftUI

class SignupViewModel: ObservableObject {
    @AppStorage("userData") private var userData : Data?
    @Published var signUpInfo = SignupModel(nickname : "", email : "", password : "")
    
    func saveUserData() {
        do {
            let encodedData = try JSONEncoder().encode(signUpInfo)
            userData = encodedData
        } catch {}
    }
}
