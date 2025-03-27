//
//  SwiftUIView_Stack.swift
//  example-Project
//
//  Created by Woorim Shin on 3/27/25.
//

import SwiftUI

struct SwiftUIView_Stack: View {
    var body: some View {
        ZStack {
            Image(systemName: "cloud.fill") // 배경 사진
                .resizable()
                .frame(width: 300, height: 200)
                .foregroundStyle(Color.gray)
                .symbolEffect(.bounce)
                .overlay(content: { // overlay modifier :
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.clear)
                        .stroke(Color.black, style: .init(lineWidth: 1))
                })
            
                VStack {
                    Text("18°") // 온도
                        .font(.system(size: 64))
                        .overlay(content: { // overlay modifier :
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.clear)
                                .stroke(Color.black, style: .init(lineWidth: 1))
                        })
                    Text("Cloudy")
                        .font(.title)
                        .overlay(content: { // overlay modifier :
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.clear)
                                .stroke(Color.black, style: .init(lineWidth: 1))
                        })
                    
                }
            
                VStack{
                
                }
            
                VStack {
                    Spacer() // spacer : 다른 뷰들 사이에서 유연한 공간을 제공함
                        .overlay(content: { // overlay modifier :
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.clear)
                                .stroke(Color.black, style: .init(lineWidth: 1))
                        })
                    Text("서울, 오후 3시 기준")
                        .padding()
                        .overlay(content: { // overlay modifier :
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.clear)
                                .stroke(Color.black, style: .init(lineWidth: 1))
                        })
                }
            }
    }
}

#Preview {
    SwiftUIView_Stack()
}
