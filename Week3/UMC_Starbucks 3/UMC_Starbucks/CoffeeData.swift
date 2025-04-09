//
//  CoffeeData.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 4/8/25.
//

import Foundation

class CoffeeDetail{
    static let shared = CoffeeDetail()
    
    let coffeeList: [String: CoffeeDetailModel] = [
        "에스프레소 콘 파나": CoffeeDetailModel(
            nameKor: "에스프레소 콘 파나",
            nameEng: "Espresso Con Panna",
            imageName: "coffee_conpanna",
            description: "신선한 에스프레소 샷에 풍부한 휘핑크림을 얹은 커피 음료로서, 뜨거운 커피의 맛과 차갑고 달콤한 생크림의 맛을 같이 즐길 수 있는 커피 음료",
            price: "4100원",
            availableTemperatures: [.hot]),
        "에스프레소 마키아또": CoffeeDetailModel(
            nameKor: "에스프레소 마키아또",
            nameEng: "Espresso Macchiato",
            imageName: "coffee_macchiato",
            description: "신선한 에스프레소 샷에 우유 거품을 살짝 얹은 커피 음료로서, 강렬한 에스프레소의 맛과 우유의 부드러움을 같이 즐길 수 있는 커피 음료",
            price: "3900원",
            availableTemperatures: [.iced]),
        "아이스 카페 아메리카노": CoffeeDetailModel(
            nameKor: "아이스 카페 아메리카노",
            nameEng: "Iced caffe Americano",
            imageName: "coffee_americanoIced",
            description: "진한 에스프레소에 시원한 정수물과 얼음을 더하여 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽고 시원하게 즐길 수 있는 커피",
            price: "4700원",
            availableTemperatures: [.iced, .hot]),
        "카페 아메리카노": CoffeeDetailModel(
            nameKor: "카페 아메리카노",
            nameEng: "caffe Americano",
            imageName: "coffee_americanoHot",
            description: "진한 에스프레소와 뜨거운 물을 섞어 스타벅스의 깔끔하고 강렬한 에스프레소를 가장 부드럽게 잘 느낄 수 있는 커피",
            price: "4700원",
            availableTemperatures: [.iced, .hot]),
        "아이스 카라멜 마키아또": CoffeeDetailModel(
            nameKor: "아이스 카라멜 마키아또",
            nameEng: "Iced Caramel Macchiato",
            imageName: "coffee_caramelIced",
            description: "향긋한 바닐라 시럽과 시원한 우유에 어름을 넣고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료",
            price: "6100원",
            availableTemperatures: [.iced, .hot]),
        "카라멜 마키아또": CoffeeDetailModel(
            nameKor: "카라멜 마키아또",
            nameEng: "Caramel Macchiato",
            imageName: "coffee_caramelHot",
            description: "향긋한 바닐라 시럽과 따뜻한 스팀 밀크 위에 풍성한 우유 거품을 얹고 점을 찍듯이 에스프레소를 부은 후 벌집 모양으로 카라멜 드리즐을 올린 달콤한 커피 음료",
            price: "6100원",
            availableTemperatures: [.iced, .hot])
    ]

    func detail(for name: String) -> CoffeeDetailModel? {
        return coffeeList[name]
    }
}
    

