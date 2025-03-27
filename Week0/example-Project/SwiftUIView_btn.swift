//
//  SwiftUIView_btn.swift
//  example-Project
//
//  Created by Woorim Shin on 3/27/25.
//

import SwiftUI

struct SwiftUIView_btn: View {
    var body: some View {
        /* 버튼을 커스텀 할 때는 이 방식을 사용해주세요 */
        Button(action: {
            
            print("호호 호호 호호")
        }) {
            Text("날 눌러줘")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white) // text color
                .cornerRadius(10) // 말그대로 도형의 corner
        }
    }
}

#Preview {
    SwiftUIView_btn()
}
