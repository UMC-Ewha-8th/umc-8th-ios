//
//  FontManager.swift
//  UMC_Starbucks
//
//  Created by 강리현 on 3/24/25.
//

import Foundation
import SwiftUI

extension Font {
    enum Pretend {
        case bold
        case semibold
        case extrabold
        case medium
        case regular
        case light
        case custom(String)
        
        var value: String {
            switch self {
            case .bold:
                return "Pretendard-Bold"
            case .semibold:
                return "Pretendard-SemiBold"
            case .extrabold:
                return "Pretendard-ExtraBold"
            case .medium:
                return "Pretendard-Medium"
            case .regular:
                return "Pretendard-Regular"
            case .light:
                return "Pretendard-Light"
            case .custom(let fontName):
                return fontName
            }
        }
    }
    
    static func pretend(_ type: Pretend, size: CGFloat = 17) -> Font{
        return .custom(type.value, size: size)
    }
}


