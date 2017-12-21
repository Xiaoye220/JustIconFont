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
    
    public static func iconFont(size: CGFloat, icon: IconFontType, color: UIColor? = nil) -> UIButton {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: size, height: size))
        button.iconFont(size: size, icon: icon, color: color)
        return button
    }
    
    public func iconFont(size: CGFloat, icon: IconFontType, color: UIColor? = nil) {
        let attributes = self.attributes(size: size, icon: icon, color: color)
        let title = NSAttributedString.init(string: icon.unicode, attributes: attributes)
        setAttributedTitle(title, for: .normal)
    }
    
}
