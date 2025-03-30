//
//  SignupView.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 3/26/25.
//

import SwiftUI

struct SignupView: View {
    @StateObject private var viewModel = SignupViewModel()
    
    var body: some View {
        
        VStack(spacing: 0) {
            VStack (spacing: 0){
                TextField("닉네임", text: $viewModel.signUpInfo.nickname)
                    .font(.pretend(.regular, size: 18))
                    .foregroundColor(.gray02)
                    .padding(.bottom, 8)
                    .padding(.top, 150)
                
                Divider()
                    .padding(.bottom, 49)
                    
                
                TextField("이메일", text: $viewModel.signUpInfo.email)
                    .font(.pretend(.regular, size: 18))
                    .foregroundColor(.gray02)
                    .padding(.bottom, 8)
                
                Divider()
                    .padding(.bottom, 49)
                
                TextField("비밀번호", text: $viewModel.signUpInfo.password)
                    .font(.pretend(.regular, size: 18))
                    .foregroundColor(.gray02)
                    .padding(.bottom, 8)
                
                Divider()
            }
            .padding(.bottom, 350)
            
            
            Button(action: {
                viewModel.saveUserData()
            }) {
                Image("signup")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 370)
            }
        }
    }
}

#Preview {
    SignupView()
}
