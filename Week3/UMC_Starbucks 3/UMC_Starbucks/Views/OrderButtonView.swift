//
//  OrderButtonView.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/5/25.
//

import SwiftUI

struct OrderButtonView: View {
    var body: some View {
        Button(action: {
                    print("주문하기")
                }) {
                    Text("주문하기")
                        .font(.pretend(.medium, size: 16))
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green00)
                        .foregroundColor(.white01)
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
                .padding(.bottom, 20)
    }
}

#Preview {
    OrderButtonView()
}
