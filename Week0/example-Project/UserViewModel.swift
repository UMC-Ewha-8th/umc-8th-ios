//
//  UserViewModel.swift
//  example-Project
//
//  Created by Woorim Shin on 3/21/25.
//

/*
 ObservableObject 와 @Published 에 대한 설명은 차차 배우게 될 것이므로, 일단 확인만 해주시기 바라겠습니다.
 UserModel을 받아오는 변수를 만들고, 뷰에서 초기화할 수 있도록 해줍니다.
 */

import Foundation

class UserViewModel: ObservableObject {
    @Published var userModel: UserModel
        
        init(userModel: UserModel) {
            self.userModel = userModel
        }
        
        func increaseAge() {
            self.userModel.increaseAge()
        }
        
        func decreaseAge() {
            self.userModel.decreaseAge()
        }
    
}
