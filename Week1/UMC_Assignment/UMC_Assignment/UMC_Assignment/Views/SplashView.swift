//
//  SplashView.swift
//  UMC_Assignment
//
//  Created by Woorim Shin on 3/27/25.
//


import SwiftUI

struct SplashView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("green01")
                    .ignoresSafeArea()
                
                
                Image("starbucksLogo") // Assets에 로고 이미지 추가 필요 < 이거 확인 좀 해야함....
                    .resizable()
                    .scaledToFit()
                    .frame(width: 168, height: 168)
                    .padding()
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    SplashView()
}
