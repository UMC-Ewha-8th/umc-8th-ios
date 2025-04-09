//
//  RecommendationView.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/3/25.
//

import SwiftUI

struct RecommendationView: View {
    @AppStorage("nickname") private var nickname: String?
    @StateObject private var viewModel = RecommendationViewModel()
    
    var body: some View {
        VStack(alignment: .leading){
            Text("\(Text(nickname ?? "(설정 닉네임)").foregroundColor(.brown01))님을 위한 추천 메뉴")
                .font(.pretend(.semibold, size: 24))
                .foregroundColor(.black03)
                .kerning(0.2)
                .padding(.horizontal)
                
            ScrollView(.horizontal) {
                LazyHStack(spacing: 1) {
                    ForEach(viewModel.recommendations) { menu in
                        if let detail = CoffeeDetail.shared.detail(for: menu.name){
                            NavigationLink(
                                destination: CoffeeDetailView(coffee:detail),
                                label: {
                                    CircleImageCard(menu: menu)
                                }
                            )
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    RecommendationView()
}
