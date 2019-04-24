//
//  UILabel+IconFont.swift
//  IconFont
//
//  Created by YZF on 2017/12/18.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit

public extension UILabel {
    
    func iconFont(_ icon: IconFontType, fontSize: CGFloat, color: UIColor? = nil) {
        let attributedString = NSAttributedString.iconFont(icon, fontSize: fontSize, color: color)
        self.attributedText = attributedString
    }
    
}
