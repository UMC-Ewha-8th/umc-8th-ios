//
//  CoffeeCard.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/3/25.
//

import SwiftUI

struct CoffeeCard: View {
    let advertisement: AdvertiseModel
    
    var body: some View {
        VStack {
            Image(advertisement.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding(.bottom, 10)
            
            Text(advertisement.name)
                .font(.pretend(.semibold, size: 18))
                .foregroundColor(.black02)
                .padding(.bottom, 10)
            
            Text(advertisement.description)
                .font(.pretend(.semibold, size: 13))
                .foregroundColor(.gray03)
        }
        .padding()
        .background(Color.white)
    }
}
