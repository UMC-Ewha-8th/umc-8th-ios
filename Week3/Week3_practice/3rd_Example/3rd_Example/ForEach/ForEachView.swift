//
//  ForEachView.swift
//  3rd_Example
//
//  Created by 강리현 on 4/1/25.
//

import SwiftUI

struct ForEachView: View {
    let fruits = ["🍎Apple", "🍊Banana", "🍋Orange", "🍌Pineapple", "🍉Grape"]
    
    var body: some View {
        List{
            ForEach(fruits, id: \.self) {fruit in
                Text(fruit)
                    .font(.title2)
            }
        }
    }
}

#Preview {
    ForEachView()
}
