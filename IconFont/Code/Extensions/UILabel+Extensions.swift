//
//  UILabel+Extensions.swift
//  IconFont
//
//  Created by YZF on 2017/12/18.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit

extension UILabel: IconFontViewType {
    
    public func iconFont(size fontSize: CGFloat, icon: IconFontType, color: UIColor? = nil) {
        let attributes = self.attributes(size: fontSize, icon: icon, color: color)
        attributedText = NSAttributedString(string: icon.unicode, attributes: attributes)
    }
    
}
