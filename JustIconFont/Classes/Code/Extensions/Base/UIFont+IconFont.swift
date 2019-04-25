//
//  UIFont+IconFont.swift
//  JustIconFont
//
//  Created by YZF on 2019/4/22.
//

import Foundation
import UIKit

public extension UIFont {
    convenience init?(iconFont: IconFontType, size: CGFloat) {
        if !iconFont.loadFont() {
            return nil
        }
        self.init(name: iconFont.name, size: size)
    }
}
