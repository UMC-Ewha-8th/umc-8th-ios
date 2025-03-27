//
//  ContentView.swift
//  example-Project
//
//  Created by Woorim Shin on 3/21/25.
//

import SwiftUI


struct SwiftUIView: View {
    var body: some View {
        Text("Hello, World! Hello, World! Hello, World! Hello, World! Hello, World!")
            .font(.largeTitle) /* "font에 large 사이즈의 title 스타일을 적용한다."
                                font 종류 : extra&Large&Title(조합), title1&2&3(조합),
                                            [sub]headline, body, callout, caption, footnote */
        
            .foregroundStyle(Color.red) /* 이 글귀를 지우시고 해당 수정자의 역할을 주석으로 달아주세요 */
            .underline() /* = html의 <u></u> tag */
            .strikethrough(false, color: Color.black) /* 취소선, true or false 가능, color : 색상 변경 가능  */
            .lineLimit(3) /* 줄바꿈 제한, nil은 null과 같은 의미,
                             lineLimit(1), lineLimit(3) 등 가능 */
            .kerning(9) /* 자간 간격(가로) */
            .lineSpacing(6) /* 줄 간 간격(세로) */
            .padding(50) /* content(내용)과 border(테두리) 사이의 간격 */
            .overlay(content: { // overlay modifier : 
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.clear)
                    .stroke(Color.black, style: .init(lineWidth: 1))
            }) /* border를 감싸는 검은색 실선 테두리 */
            .dynamicTypeSize(.large) /* 이 글귀를 지우시고 해당 수정자의 역할을 주석으로 달아주세요 */
    }
}

#Preview {
    SwiftUIView()
}


