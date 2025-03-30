//
//  SplashView.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 3/24/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            Color.green01
                .ignoresSafeArea()
            
            Image("starbucks")
                .resizable()
                .frame(width: 168, height: 168)
                .scaledToFit()
        }
    }
}

#Preview {
    SplashView()
}
