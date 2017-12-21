//
//  UIButton+Extensions.swift
//  IconFont
//
//  Created by YZF on 2017/12/20.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit

extension UIButton: IconFontViewType {
    
    public func iconFont(size fontSize: CGFloat, icon: IconFontType, color: UIColor? = nil) {
        let attributes = self.attributes(size: fontSize, icon: icon, color: color)
        let title = NSAttributedString.init(string: icon.unicode, attributes: attributes)
        setAttributedTitle(title, for: .normal)
    }
    
}
