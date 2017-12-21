//
//  UIImageView+Extensions.swift
//  IconFont
//
//  Created by YZF on 2017/12/20.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView: IconFontViewType {
    
    public func iconFont(size fontSize: CGFloat, icon: IconFontType, color: UIColor? = nil) {
        self.image = UIImage.iconFont(size: fontSize, icon: icon, color: color)
    }
    
}
