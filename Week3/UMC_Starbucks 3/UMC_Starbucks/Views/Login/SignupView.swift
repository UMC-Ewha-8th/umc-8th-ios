//
//  SignupView.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 3/26/25.
//

import SwiftUI

struct SignupView: View {
    @StateObject private var viewModel = SignupViewModel()
    @Environment(\.dismiss) var dismiss
    @FocusState private var focusedField: FocusField?
    
    enum FocusField {
        case nickname, id, pwd
    }
    
    var body: some View {
        
        VStack(spacing: 0) {
            VStack (spacing: 0){
                VStack(alignment: .leading) {
                    TextField("닉네임", text: $viewModel.signUpInfo.nickname)
                        .font(.pretend(.regular, size: 18))
                        .foregroundColor(.black01)
                        .focused($focusedField, equals: .nickname)
                        .padding(.bottom, 8)
                        .padding(.horizontal)
                    
                    Divider()
                        
                        .background(focusedField == .nickname ? Color.green01 : Color.gray01)
                }
                .padding(.bottom, 49)
                .padding(.top, 150)
                
                VStack(alignment: .leading){
                    TextField("이메일", text: $viewModel.signUpInfo.email)
                        .font(.pretend(.regular, size: 18))
                        .foregroundColor(.black01)
                        .focused($focusedField, equals: .id)
                        .padding(.bottom, 8)
                        .padding(.horizontal)
                    
                    Divider()
                        .background(focusedField == .id ? Color.green01 : Color.gray01)
                }
                .padding(.bottom, 49)
                
                VStack(alignment: .leading){
                    TextField("비밀번호", text: $viewModel.signUpInfo.password)
                        .font(.pretend(.regular, size: 18))
                        .foregroundColor(.black01)
                        .focused($focusedField, equals: .pwd)
                        .padding(.bottom, 8)
                        .padding(.horizontal)
                    
                    Divider()
                        .background(focusedField == .pwd ? Color.green01 : Color.gray01)
                }
            }
            .padding(.bottom, 350)
            
            Button(action: {
                viewModel.saveUserData()
                dismiss()
            }) {
                Image("signup")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 370)
            }
        }
        .navigationTitle("가입하기")
    }
}

#Preview {
    SignupView()
}
