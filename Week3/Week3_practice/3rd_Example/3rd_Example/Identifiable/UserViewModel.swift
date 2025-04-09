//
//  UserViewModel.swift
//  3rd_Example
//
//  Created by 강리현 on 4/2/25.
//

import Foundation

@Observable
class UserViewModel {
    var users = [
        User(name: "Alice", age: 22),
        User(name: "Jake", age: 24),
        User(name: "Isabelle", age: 20)
    ]
}
