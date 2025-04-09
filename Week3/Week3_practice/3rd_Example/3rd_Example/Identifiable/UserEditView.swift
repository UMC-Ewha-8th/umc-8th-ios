//
//  UserEditView.swift
//  3rd_Example
//
//  Created by 강리현 on 4/1/25.
//


import SwiftUI

struct UserEditView: View {
    @Binding var user: User
    
    var body: some View{
        Form {
            TextField("Name", text: $user.name)
            Stepper("Age: \(user.age)", value: $user.age, in: 18...100)
        }
    }
}
