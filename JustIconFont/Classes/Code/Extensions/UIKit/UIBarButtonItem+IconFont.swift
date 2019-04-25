//
//  UIBarButtonItem+IconFont.swift
//  JustIconFont
//
//  Created by YZF on 2019/4/25.
//

import Foundation

public extension UIBarButtonItem {
    
    /// UIBarButtonItem set image with iconFont.
    /// If color is nil, icon's color is depend on `tintClor`
    func iconFont(_ icon: IconFontType, fontSize: CGFloat, color: UIColor? = nil) {
        
        var image = UIImage.iconFont(icon, fontSize: fontSize, color: color)
        if color != nil {
            image = image.withRenderingMode(.alwaysOriginal)
        }
        self.image = image
    }
}
