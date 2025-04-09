//
//  UMC_StarbucksApp.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 3/24/25.
//

import SwiftUI

@main
struct UMC_StarbucksApp: App {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isLoggedIn{
                MainTabView()
            } else {
                LoginView()
            }
        }
    }
}
