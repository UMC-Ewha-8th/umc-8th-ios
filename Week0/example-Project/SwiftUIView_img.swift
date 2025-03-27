//
//  SwiftUIView_img.swift
//  example-Project
//
//  Created by Woorim Shin on 3/27/25.
//

import SwiftUI

struct SwiftUIView_img: View { //struct 부분은 SwiftView 파일 이름과 똑같이 만들어야 함
    var body: some View {
        Image(systemName: "eraser.fill")
            .resizable()
            .frame(width: 300, height: 300)
            .aspectRatio(contentMode: .fit) /* 이 부분 fit 과 fill 그리고 수정자 자체를 사용하지 않을 때 3가지 차이가 있습니다. 스스로 학습하시기 바라겠습니다. */
            .background() {
                Circle()
                    .fill(Color.green)
                    .frame(width: 250, height: 250)
                    .border(Color.black)
            }
            .border(Color.red)
            .clipShape(RoundedRectangle(cornerRadius: 100))
            .foregroundStyle(Color.red)
    }
}

#Preview {
    SwiftUIView_img() // #Preview 부분도 SwiftView 파일 이름과 똑같이 만들어야 함
}
