//
//  LoginView.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 3/24/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    @FocusState private var focusedField: FocusField?
    @State private var path = NavigationPath()
    
    enum FocusField {
        case id, pwd
    }
    
    var body: some View {
        NavigationStack(path: $path){
            VStack (spacing: 0){
                Spacer()
                
                VStack(alignment: .leading) {
                    Image("starbucks")
                        .resizable()
                        .frame(width: 97, height: 95)
                    
                    Text("안녕하세요.\n스타벅스입니다.")
                        .font(.pretend(.extrabold, size: 24))
                        .kerning(1.2)
                        .foregroundColor(.black00)
                        .padding(.top, 28)
                    
                    Text("회원 서비스 이용을 위해 로그인 해주세요")
                        .font(.pretend(.medium, size: 16))
                        .foregroundColor(.gray01)
                        .padding(.top, 19)
                }
                .frame(width: 400, alignment: .leading)
                Spacer()
                
                VStack {
                    VStack(alignment: .leading) {
                        TextField("이메일", text: $viewModel.id)
                            .font(.pretend(.regular, size: 15))
                            .foregroundColor(.black01)
                            .focused($focusedField, equals: .id)
                            .padding(.horizontal)
                        
                        Divider()
                            .background(focusedField == .id ? Color.green01 : Color.gray01)
                    }
                    VStack(alignment: .leading) {
                        TextField("비밀번호", text: $viewModel.pwd)
                            .font(.pretend(.regular, size: 15))
                            .foregroundColor(.black01)
                            .focused($focusedField, equals: .pwd)
                            .padding(.top, 47)
                            .padding(.horizontal)
                        
                        Divider()
                            .background(focusedField == .pwd ? Color.green01 : Color.gray01)
                    }
                    Button{
                        _ = viewModel.login()
                    } label: {
                        Image("login")
                            .padding(.top, 47)
                    }
                    
                    
                }
                Spacer()
                
                VStack{
                    Button {
                        path.append("Signup")
                    } label: {
                        Text("이메일로 회원가입하기")
                            .font(.pretend(.regular, size: 12))
                            .foregroundColor(.gray04)
                            .underline()
                            .padding(.top, 47)
                    }
                    Image("kakao")
                    Image("apple")
                }
                Spacer()
            }
            .navigationDestination(for: String.self) { value in
                SignupView()
            }
        }
    }
}

#Preview{
    LoginView()
}
