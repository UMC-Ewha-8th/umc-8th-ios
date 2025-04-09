//
//  PopupView.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 3/26/25.
//

import SwiftUI

struct PopupView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        var screenSize: CGRect {
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
                return .zero
            }
            return windowScene.screen.bounds
        }
        VStack(spacing: 0) {
            Image("popup")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .edgesIgnoringSafeArea(.top)
                .padding(.bottom)
            
            Button(action:{
                print("자세히 보기")
            }) {
                Image("learnmore")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 370)
                    .padding()
            }
            
            Button(action: {
                dismiss()
            }) {
                Text("X 닫기")
                    .font(.pretend(.light, size: 14))
                    .foregroundColor(.gray05)
                    .frame(width: 340, alignment: .trailing)
                
            }
                
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        
    }
}

#Preview {
    PopupView()
}


