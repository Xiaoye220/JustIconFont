//
//  UIButton+IconFont.swift
//  IconFont
//
//  Created by YZF on 2017/12/20.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit

public extension UIButton {
    
    /// Button set image with iconFont.
    /// If color is nil, icon's color is depend on `tintClor`
    func iconFont(_ icon: IconFontType,
                  fontSize: CGFloat,
                  color: UIColor? = nil,
                  for state: UIControl.State = .normal) {
        
        var image = UIImage.iconFont(icon, fontSize: fontSize, color: color)
        if color != nil {
            image = image.withRenderingMode(.alwaysOriginal)
        }
        self.setImage(image, for: state)
    }
    
}
