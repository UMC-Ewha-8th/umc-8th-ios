//
//  User.swift
//  3rd_Example
//
//  Created by 강리현 on 4/1/25.
//

import Foundation

struct User: Identifiable{
    let id = UUID()
    var name: String
    var age: Int
}
