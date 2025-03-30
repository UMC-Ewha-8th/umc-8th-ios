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
}
