//
//  UITabBarItem+Extensions.swift
//  IconFont
//
//  Created by YZF on 2017/12/20.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit

extension UITabBarItem {
    
    public func iconFont(size: CGFloat, icon: IconFontType, color: UIColor? = nil) {
        self.image = UIImage.iconFont(size: size, icon: icon, color: color).withRenderingMode(.alwaysOriginal)
    }
    
    public func selectedIconFont(size: CGFloat, icon: IconFontType, color: UIColor? = nil) {
        self.selectedImage = UIImage.iconFont(size: size, icon: icon, color: color).withRenderingMode(.alwaysOriginal)
    }
}
