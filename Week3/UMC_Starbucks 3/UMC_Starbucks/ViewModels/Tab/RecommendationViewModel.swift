//
//  RecommendationViewModel.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/3/25.
//

import Foundation

class RecommendationViewModel: ObservableObject {
    @Published var recommendations: [RecommendationModel] = [
        RecommendationModel(name: "에스프레소 콘 파나", imageName: "espresso_conpanna"),
        RecommendationModel(name: "에스프레소 마키아또", imageName: "espresso_macchiato"),
        RecommendationModel(name: "아이스 카페 아메리카노", imageName: "iced_americano"),
        RecommendationModel(name: "카페 아메리카노", imageName: "americano"),
        RecommendationModel(name: "아이스 카라멜 마키아또", imageName: "iced_caramel_macchiato"),
        RecommendationModel(name: "카라멜 마키아또", imageName: "caramel_macchiato")
    ]
}
