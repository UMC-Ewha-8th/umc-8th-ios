//
//  OtherView.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/10/25.
//

import SwiftUI

struct OtherView: View {
    @AppStorage("nickname") private var nickname: String = ""
    
    var body: some View {
        VStack {
            if !nickname.isEmpty {
                VStack(alignment: .center, spacing: 10){
                    Text("\(nickname) 님")
                    Text("환영합니다!🙌🏻")
                }
                .font(.pretend(.semibold, size: 24))
            } else {
                VStack(alignment: .center, spacing: 10){
                    Text("(작성한 닉네임) 님")
                    Text("환영합니다!🙌🏻")
                }
                .font(.pretend(.semibold, size: 24))
                
                
            }
        }
    }
}

#Preview {
    OtherView()
}
