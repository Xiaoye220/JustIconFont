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
    
    public static func iconFont(size: CGFloat, icon: IconFontType, color: UIColor? = nil) -> UIImageView {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: size, height: size))
        imageView.iconFont(size: size, icon: icon, color: color)
        return imageView
    }
    
    public func iconFont(size: CGFloat, icon: IconFontType, color: UIColor? = nil) {
        self.image = UIImage.iconFont(size: size, icon: icon, color: color)
    }
    
}
