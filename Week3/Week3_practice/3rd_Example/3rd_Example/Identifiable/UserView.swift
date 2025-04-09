//
//  UserView.swift
//  3rd_Example
//
//  Created by 강리현 on 4/2/25.
//

import SwiftUI
import Observation

struct UserView: View {
    @State private var userViewModel: UserViewModel = .init()
    var body: some View {
        NavigationStack {
            List{
                ForEach(userViewModel.users.indices, id: \.self) { index in
                    NavigationLink(destination: UserEditView(user: $userViewModel.users[index])){
                        HStack{
                            Text(userViewModel.users[index].name)
                            Spacer()
                            Text("\(userViewModel.users[index].age) years old")
                        }
                    }
                }
            }
            .navigationTitle("Users")
        }
    }
}

#Preview {
    UserView()
}
