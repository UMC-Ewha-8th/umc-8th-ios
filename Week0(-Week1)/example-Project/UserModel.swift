//
//  UserModel.swift
//  example-Project
//
//  Created by Woorim Shin on 3/21/25.
//

/*
 UserModel에서 사용자의 이름과 나이를 저장하는 구조체를 생성합니다.
 또한 나이의 값을 증가 감소 할 수 있는 mutating 함수도 생성합니다.
 */

import Foundation

struct UserModel {
    var name: String
    var age: Int
    
    mutating func increaseAge() {
        age += 1
    }
    
    mutating func decreaseAge() {
        age -= 1
    }
}
