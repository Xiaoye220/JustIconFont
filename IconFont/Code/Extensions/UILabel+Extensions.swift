//
//  UILabel+Extensions.swift
//  IconFont
//
//  Created by YZF on 2017/12/18.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit

extension UILabel: IconFontExtensionsType {
    
    public func iconFont(size fontSize: CGFloat, icon: IconFontType, color: UIColor? = nil) {
        let attributedString = self.attributedString(size: fontSize, icon: icon, color: color)
        self.attributedText = attributedString
    }
    
}
