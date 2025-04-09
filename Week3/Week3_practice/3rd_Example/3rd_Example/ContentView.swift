//
//  ContentView.swift
//  3rd_Example
//
//  Created by 강리현 on 4/1/25.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Button("Go to Detail"){
                    path.append("Detail")
                }
            }
            .navigationDestination(for: String.self) {value in
                DetailView()
            }
            .navigationTitle("Home")
        }
    }
}
struct DetailView: View{
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("Detail Page")
            Button("Go Back") {
                dismiss()
            }
        }
        .navigationTitle("Detail")
    }
}

#Preview {
    ContentView()
}
