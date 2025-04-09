//
//  RecommendationModel.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/3/25.
//

import Foundation

struct RecommendationModel: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    
    init(id: UUID = UUID(), name: String, imageName: String){
        
        self.name = name
        self.imageName = imageName
    }
}
