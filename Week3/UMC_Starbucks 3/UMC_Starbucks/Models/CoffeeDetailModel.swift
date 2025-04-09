//
//  CoffeeDetailModel.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/4/25.
//

import Foundation

enum CoffeeTemperature: String, CaseIterable {
    case hot = "HOT"
    case iced = "ICED"
}

struct CoffeeDetailModel: Identifiable {
    let id = UUID()
    let nameKor: String
    let nameEng: String
    let imageName: String
    let description: String
    let price: String
    let availableTemperatures: [CoffeeTemperature]
    
    init(
            id: UUID = UUID(),
            nameKor: String,
            nameEng: String,
            imageName: String,
            description: String,
            price: String,
            availableTemperatures: [CoffeeTemperature] = []
        ) {
            self.nameKor = nameKor
            self.nameEng = nameEng
            self.imageName = imageName
            self.description = description
            self.price = price
            self.availableTemperatures = availableTemperatures
        }
}

