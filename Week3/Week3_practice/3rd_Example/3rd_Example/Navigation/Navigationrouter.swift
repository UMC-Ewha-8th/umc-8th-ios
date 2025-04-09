//
//  Navigationrouter.swift
//  3rd_Example
//
//  Created by 강리현 on 4/2/25.
//

import Foundation
import SwiftUI

enum Route: Hashable {
    case home
    case detail(title: String)
    case profile(userID: Int)
}

@Observable
class NavigationRouter {
    var path = NavigationPath()
    
    func push(_ route: Route) {
        path.append(route)
    }
    func pop() {
        if !path.isEmpty {
            path.removeLast()
        }
    }
    func reset() {
        path = NavigationPath()
    }
}
