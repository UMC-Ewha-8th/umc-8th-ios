//
//  CircleImageCard.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/3/25.
//

import SwiftUI

struct CircleImageCard: View {
    let menu: RecommendationModel
    
    var body: some View {
        VStack {
            Image(menu.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding(.bottom, 10)
            
            Text(menu.name)
                .font(.pretend(.semibold, size: 14))
                .foregroundColor(.black02)
        }
        .padding()
        .background(Color.white)
    }
}

