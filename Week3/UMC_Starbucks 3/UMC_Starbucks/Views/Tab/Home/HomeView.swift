//
//  HomeView.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/3/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                ZStack{
                    Image("top_img")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .edgesIgnoringSafeArea(.top)
                        .padding(.bottom)
                    
                    VStack{
                        Text("골든 미모사 그린 티와 함께 \n행복한 새해의 축배를 들어요!")
                            .font(.pretend(.regular, size: 24))
                            .foregroundColor(.black03)
                            .frame(width: 350, alignment: .leading)
                            .padding(.bottom, 5)
                        
                        HStack{
                            ProgressView(value: 0.8){
                                Text("2★ until next Reward")
                                    .font(.pretend(.semibold, size: 16))
                                    .foregroundColor(.brown02)
                                    .padding(.bottom, 2)
                            }
                            .frame(width: 225)
                            .tint(.brown01)
                            .padding(.trailing, 20)
                            
                            Text("1")
                                .font(.pretend(.semibold, size: 38))
                                .foregroundColor(.black03)
                            Text("/")
                                .font(.pretend(.light, size: 24))
                                .foregroundColor(.gray00)
                            Text("12")
                                .font(.pretend(.semibold, size: 24))
                                .foregroundColor(.brown02)
                            + Text("★")
                                .font(.pretend(.semibold, size: 15))
                                .foregroundColor(.brown02)
                        }
                        .frame(width: 350, alignment: .leading)
                    }
                    
                }
                Spacer()
                
                Image("banner1")
                
                RecommendationView()
                
                Image("banner2")
                    .padding(.bottom, 5)
                Image("banner3")
                
                AdvertiseView()
                
                VStack{
                    Image("banner4")
                        .padding(.bottom, 5)
                    Image("banner5")
                        .padding(.bottom, 5)
                    Image("banner6")
                }
                
                DessertRecommendView()
                
                VStack{
                    Image("banner7")
                        .padding(.bottom, 5)
                    Image("banner8")
                        .padding(.bottom, 5)
                    Image("banner9")
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
