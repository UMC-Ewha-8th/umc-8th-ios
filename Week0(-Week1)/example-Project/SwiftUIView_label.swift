//
//  SwiftUIView_label.swift
//  example-Project
//
//  Created by Woorim Shin on 3/27/25.
//

import SwiftUI

struct SwiftUIView_label: View {
    var body: some View {
        Button(action: {
                    print("레이블을 클릭했습니다.")
                }, label: {
                    Label(title: {
                        Text("레이블 내부 텍스트입니다.")
                    }, icon: {
                        Image(systemName: "rectangle.portrait.and.arrow.right.fill")
                            .imageScale(.large)
                    })
                    .labelStyle(.titleAndIcon)
                })
            }
        }


#Preview {
    SwiftUIView_label()
}
