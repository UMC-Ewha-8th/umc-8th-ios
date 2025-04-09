//
//  DessertRecommendViewModel.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/4/25.
//

import Foundation

class DessertRecommendViewModel: ObservableObject {
    @Published var desserts: [RecommendationModel] = [
        RecommendationModel(name: "너티 크루아상", imageName: "nutty_croissant"),
        RecommendationModel(name: "매콤 소시지 불고기", imageName: "sausage_bulgogi"),
        RecommendationModel(name: "미니 리프 파이", imageName: "leaf_pie"),
        RecommendationModel(name: "뺑 오 쇼콜라", imageName: "pain_au_chocolat"),
        RecommendationModel(name: "소시지&올리브 파이", imageName: "sausageolive_pie"),
    ]
}
