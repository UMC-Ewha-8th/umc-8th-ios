//
//  CoffeeDetailView.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/4/25.
//

import SwiftUI

struct CoffeeDetailView: View {
    let coffee: CoffeeDetailModel
    @Environment(\.dismiss) var dismiss
    @State private var selectedTemp: CoffeeTemperature?
    
    init(coffee: CoffeeDetailModel) {
            self.coffee = coffee
            _selectedTemp = State(initialValue: coffee.availableTemperatures.first ?? .hot)
        }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(coffee.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .frame(maxWidth: .infinity)
                .padding(.bottom, 35)
                            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(coffee.nameKor)
                        .font(.pretend(.semibold, size: 24))
                        .foregroundColor(.black03)
                    Text("New")
                        .font(.pretend(.light, size: 8))
                        .foregroundColor(.green00)
                }
                Text(coffee.nameEng)
                    .font(.pretend(.semibold, size: 14))
                    .foregroundColor(.gray01)
            }
            .frame(width: 370, alignment: .leading)
            .padding(.horizontal)
            .padding(.bottom, 16)
            
            
            Text(coffee.description)
                .font(.pretend(.semibold, size: 14))
                .foregroundColor(.gray06)
                .padding(.horizontal)
                .padding(.bottom, 16)
            
            Text(coffee.price)
                .font(.pretend(.regular, size: 24))
                .foregroundColor(.black00)
                .padding(.horizontal)
                .padding(.bottom, 20)
            
            
            HStack {
                if coffee.availableTemperatures.count > 1 {
                    HStack(spacing: 0) {
                        ForEach(coffee.availableTemperatures, id: \.self) { temp in
                            Button(action: {
                                withAnimation {
                                    selectedTemp = temp
                                }
                            }) {
                                Text(temp.rawValue)
                                    .font(.pretend(.semibold, size: 18))
                                    .foregroundColor(selectedTemp == temp
                                                                     ? (temp == .iced ? .blue : .red)
                                                                     : .gray)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 10)
                                    .background(
                                        ZStack {
                                            if selectedTemp == temp {
                                                Color.white
                                                    .cornerRadius(20)
                                                    .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
                                                    .transition(.scale)
                                            } else {
                                                Color.clear
                                            }
                                        }
                                    )
                            }
                        }
                    }
                    .padding(4)
                    .background(Color(.systemGray5))
                    .cornerRadius(20)
                    .padding(.top, 16)
                    
                } else if let only = coffee.availableTemperatures.first {
                    Text("\(only.rawValue) ONLY")
                        .font(.pretend(.semibold, size: 18))
                        .foregroundColor(only == .hot ? .red : .blue)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(Color.white.cornerRadius(20))
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.5))
                        
                }
            }
            .padding(.horizontal, 10)

            
            
            Spacer()
            
            OrderButtonView()
        }
    }
}

#Preview {
    CoffeeDetailView(coffee: CoffeeDetailModel(
            nameKor: "아이스 카라멜 마키아또",
            nameEng: "Iced Caramel Macchiato",
            imageName: "coffee_caramelIced",
            description: "향긋한 바닐라 시럽과 시원한 우유에 얼음을 넣고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료",
            price: "6,100원",
            availableTemperatures: [.iced, .hot]
        ))
}
