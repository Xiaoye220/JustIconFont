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
    
    public static func iconFont(size: CGFloat, icon: IconFontType, color: UIColor? = nil) -> UILabel {
        let label = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: size, height: size))
        label.iconFont(size: size, icon: icon, color: color)
        return label
    }
    
    public func iconFont(size: CGFloat, icon: IconFontType, color: UIColor? = nil) {
        let attributes = self.attributes(size: size, icon: icon, color: color)
        attributedText = NSAttributedString(string: icon.unicode, attributes: attributes)
    }
    
}
