//
//  SimpleListView.swift
//  3rd_Example
//
//  Created by 강리현 on 4/1/25.
//

import SwiftUI

struct SimpleListView: View {
    var body: some View {
        List {
            Text("🍎 Apple")
            Text("🍌 Banana")
            Text("🍒 Cherry")
        }
    }
}

struct SimpleListView_Previews: PreviewProvider {
    static var previews: some View {
        SimpleListView()
    }
}
#Preview {
    SimpleListView()
}
