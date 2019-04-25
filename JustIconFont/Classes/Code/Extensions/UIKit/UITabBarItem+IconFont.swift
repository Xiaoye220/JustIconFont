//
//  UITabBarItem+IconFont.swift
//  JustIconFont
//
//  Created by YZF on 2019/4/25.
//

import Foundation

public extension UITabBarItem {
    
    enum IconFontState {
        case normal
        case selected
    }
    
    /// UITabBarItem set image with iconFont.
    /// If color is nil, icon will present the default color
    func iconFont(_ icon: IconFontType,
                  fontSize: CGFloat,
                  color: UIColor? = nil,
                  for state: UITabBarItem.IconFontState = .normal) {
        
        var image = UIImage.iconFont(icon, fontSize: fontSize, color: color)
        if color != nil {
            image = image.withRenderingMode(.alwaysOriginal)
        }
        
        switch state {
        case .normal:
            self.image = image
        case .selected:
            self.selectedImage = image
        }
        
    }
    
}
