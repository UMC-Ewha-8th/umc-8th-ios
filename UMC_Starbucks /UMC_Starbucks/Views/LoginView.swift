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
    
    enum FocusField {
        case id, pwd
    }
    
    var body: some View {
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
            Spacer()
            
            VStack(alignment: .leading) {
                VStack(alignment: .leading) {
                    TextField("아이디", text: $viewModel.id)
                        .font(.pretend(.regular, size: 13))
                        .foregroundColor(.black01)
                        .focused($focusedField, equals: .id)
                    
                    Divider()
                        .background(focusedField == .id ? Color.green01 : Color.gray01)
                }
                VStack(alignment: .leading) {
                    TextField("비밀번호", text: $viewModel.pwd)
                        .font(.pretend(.regular, size: 13))
                        .foregroundColor(.black01)
                        .frame(width: 66, height: 16)
                        .focused($focusedField, equals: .pwd)
                        .padding(.top, 47)
                    
                    Divider()
                        .background(focusedField == .pwd ? Color.green01 : Color.gray01)
                }
                
                Image("login")
                    .padding(.top, 47)
                
            }
            Spacer()
            
            VStack{
                Text("이메일로 회원가입하기")
                    .font(.pretend(.regular, size: 12))
                    .foregroundColor(.gray04)
                    .underline()
                    .padding(.top, 47)
                
                Image("kakao")
                Image("apple")
            }
            Spacer()
        }
    }
}

struct LoginView_Preview: PreviewProvider {
    static var devices = ["iPhone 11", "iPhone 16 Pro Max"]
    
    static var previews: some View{
        ForEach(devices, id: \.self) {device in
            LoginView()
                .previewDevice(PreviewDevice(rawValue: device))
                .previewDisplayName(device)
        }
    }
}
