//
//  UIButton+IconFont.swift
//  IconFont
//
//  Created by YZF on 2017/12/20.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    public func iconFont<T: IconFontType>(size fontSize: CGFloat, icon: T, color: UIColor? = nil) {
        let attributedString = NSAttributedString.attributedString(size: fontSize, icon: icon, color: color)
        self.setAttributedTitle(attributedString, for: .normal)
    }
    
}
