//
//  AdvertiseView.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/3/25.
//

import SwiftUI

struct AdvertiseView: View {
    @StateObject private var viewModel = AdvertiseViewModel()
    
    var body: some View {
        VStack(alignment: .leading){
            Text("What's New")
                .font(.pretend(.semibold, size: 24))
                .foregroundColor(.black03)
                .kerning(0.2)
                .padding(.horizontal)
                
            ScrollView(.horizontal) {
                LazyHStack(spacing: 1) {
                    ForEach(viewModel.advertiseData) { advertisement in
                        CoffeeCard(advertisement: advertisement)
                            .frame(width: 180, height: 180)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    AdvertiseView()
}
