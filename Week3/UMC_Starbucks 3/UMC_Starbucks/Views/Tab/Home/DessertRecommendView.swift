//
//  DessertRecommendView.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/4/25.
//

import SwiftUI

struct DessertRecommendView: View {
    @StateObject private var viewModel = DessertRecommendViewModel()
    
    var body: some View {
        VStack(alignment: .leading){
            Text("하루가 달콤해지는 디저트")
                .font(.pretend(.semibold, size: 24))
                .foregroundColor(.black03)
                .kerning(0.2)
                .padding(.horizontal)
                
            ScrollView(.horizontal) {
                LazyHStack(spacing: 1) {
                    ForEach(viewModel.desserts) { menu in
                        CircleImageCard(menu: menu)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}


        

#Preview {
    DessertRecommendView()
}
