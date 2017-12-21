//
//  CustomIconFont.swift
//  IconFont
//
//  Created by YZF on 2017/12/19.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation

extension CustomIconFont {
    public static var fontFilePath: String? {
        return Bundle.main.path(forResource: "fontName", ofType: "ttf")
    }
    
    public static var fontName: String {
        return "iconfont"
    }
    
    public var unicode: String {
        return self.rawValue
    }
}

public enum CustomIconFont: String {
    case star = "\u{e607}"
}
