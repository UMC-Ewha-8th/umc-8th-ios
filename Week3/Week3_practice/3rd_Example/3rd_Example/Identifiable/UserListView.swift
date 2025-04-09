//
//  UserListView.swift
//  3rd_Example
//
//  Created by 강리현 on 4/1/25.
//

import SwiftUI

struct UserListView: View {
    @State private var users = [
        User(name: "Alice", age: 22),
        User(name: "Jake", age: 24),
        User(name: "Isabelle", age: 20)
    ]
    @State private var selectedUser: User?
    
    var body: some View {
        NavigationView {
            List {
                ForEach($users) { $user in
                    NavigationLink(destination: UserEditView(user: $user)){
                        HStack{
                            Text(user.name)
                            Spacer()
                            Text("\(user.age) years old")
                        }
                    }
                }
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    UserListView()
}
