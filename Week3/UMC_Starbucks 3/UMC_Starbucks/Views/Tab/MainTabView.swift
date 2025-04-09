//
//  MainTabView.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 3/29/25.
//

import SwiftUI

struct MainTabView: View {
    @State private var selection: Int=0
    
    
    
    var body: some View {
        TabView(selection : $selection){
            HomeView()
                .tabItem {
                    Image(selection == 0 ? "icon1_2" : "icon1")
                    Text("Home")
                }
                .tag(0)

            PayView()
                .tabItem {
                    Image(selection == 1 ? "icon2_2" : "icon2")
                    Text("Pay")
                }
                .tag(1)
            
            OrderView()
                .tabItem {
                    Image(selection == 2 ? "icon3_2" : "icon3")
                    Text("Order")
                }
                .tag(2)

            ShopView()
                .tabItem {
                    Image(selection == 3 ? "icon4_2" : "icon4")
                    Text("Shop")
                }
                .tag(3)

            OtherView()
                .tabItem {
                    Image(selection == 4 ? "icon5_2" : "icon5")
                    Text("Other")
                }
                .tag(4)
        }
        .tint(Color("green02"))
    }
}

struct PayView: View {
    var body: some View {
        Text("Pay Screen")
    }
}

struct OrderView: View {
    var body: some View {
        Text("Order Screen")
    }
}

struct ShopView: View {
    var body: some View {
        Text("Shop Screen")
    }
}



#Preview {
    MainTabView()
}
