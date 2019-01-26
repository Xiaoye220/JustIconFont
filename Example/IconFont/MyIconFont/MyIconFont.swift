//
//  CustomIconFont.swift
//  IconFont
//
//  Created by YZF on 2017/12/19.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import JustIconFont

public enum MyIconFont: String {
    case feedback = "\u{e656}"
    case search = "\u{e651}"
    case home = "\u{e64f}"
    case clock = "\u{e648}"
    case like = "\u{e643}"
    case shoppingCart = "\u{e63f}"
}

extension MyIconFont: IconFontType, CaseIterable {

    public static var fontFilePath: String? = Bundle.main.path(forResource: "iconfont", ofType: "ttf")    
    
    public static var fontName: String {
        return "iconfont"
    }
    
    public var unicode: String {
        return self.rawValue
    }
}

