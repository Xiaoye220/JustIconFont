//
//  UIFont+IconFont.swift
//  JustIconFont
//
//  Created by YZF on 2019/4/22.
//

import Foundation
import UIKit

extension UIFont {
    convenience init?<T: IconFontType>(iconFont iconFontType: T, size fontSize: CGFloat) {
        if !iconFontType.loadFont() { return nil }
        self.init(name: iconFontType.name, size: fontSize)
    }
}
