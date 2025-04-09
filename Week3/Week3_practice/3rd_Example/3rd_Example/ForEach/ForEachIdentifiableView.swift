//
//  ForEachIdentifiableView.swift
//  3rd_Example
//
//  Created by 강리현 on 4/1/25.
//

import SwiftUI

struct ForEachIdentifiableView: View {
    let fruits = [
        Fruit(name: "Apple", emoji: "🍎"),
        Fruit(name: "Banana", emoji: "🍌"),
        Fruit(name: "Orange", emoji: "🍊"),
        Fruit(name: "Grape", emoji: "🍇"),
        Fruit(name: "Strawberry", emoji: "🍓")
    ]
    
    var body: some View {
        List {
            ForEach(fruits) {fruit in
                HStack{
                    Text(fruit.emoji)
                    Text(fruit.name)
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    ForEachIdentifiableView()
}
