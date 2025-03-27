//
//  LoginView.swift
//  UMC_Assignment
//
//  Created by Woorim Shin on 3/27/25.
//

import SwiftUI

struct LoginView: View {
    private var id: String = ""
    private var password: String = ""
    
    var body: some View {
        VStack(spacing: 30) {
            // 로고
            Image("starbucksLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 97, height: 95)
                .frame(alignment: .leading)
                .padding(.top, 16)

            // 타이틀
            VStack(alignment: .leading, spacing: 8) {
                Text("안녕하세요.")
                    .font(.mainTextExtraBold24)
                    .foregroundColor(Color("black01"))
                Text("스타벅스입니다.")
                    .font(.mainTextExtraBold24)
                    .foregroundColor(Color("black01"))
                Text("회원 서비스 이용을 위해 로그인해주세요")
                    .font(.mainTextMedium16)
                    .foregroundColor(Color("gray01"))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.bottom, 20)
            
            // 입력 필드
            VStack(spacing: 24) {
                VStack(spacing: 8) {
                    Text("아이디")
                        .font(.mainTextRegular13)
                        .foregroundColor(Color("gray05"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color("gray03"))
                }

                VStack(spacing: 8) {
                    Text("비밀번호")
                        .font(.mainTextRegular13)
                        .foregroundColor(Color("gray05"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color("gray03"))
                }
            }
            
            // 로그인 버튼 + 소셜 버튼
            VStack(spacing: 16) {
                Button(action: {}) {
                    Text("로그인")
                        .font(.makeMedium18)
                        .foregroundColor(Color("white01"))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(Color("green01"))
                        .cornerRadius(25)
                }

                Button(action: {}) {
                    Text("이메일로 회원가입하기")
                        .font(.mainTextRegular13)
                        .foregroundColor(Color("gray05"))
                        .underline()
                }
                .padding(.top, 50)

                Button(action: {}) {
                    Image("kakaoLogin")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                }

                Button(action: {}) {
                    Image("appleLogin")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                }
            }
            .padding(.top, 20)

            Spacer()
        }
        .padding(.horizontal, 16)
        .padding(.top, 40)
    }
}

#Preview {
    LoginView()
}
