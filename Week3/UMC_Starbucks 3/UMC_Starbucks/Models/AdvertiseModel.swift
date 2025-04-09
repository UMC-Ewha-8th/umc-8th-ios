//
//  AdvertiseModel.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/3/25.
//

import Foundation

struct AdvertiseModel: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let description: String
    
    init(id: UUID = UUID(), name: String, imageName: String, description: String){
        
        self.name = name
        self.imageName = imageName
        self.description = description
    }
}
