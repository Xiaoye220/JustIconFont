//
//  UIImageView+IconFont.swift
//  JustIconFont
//
//  Created by YZF on 2019/4/24.
//

import Foundation
import UIKit

public extension UIImageView {
    
    func iconFont(_ icon: IconFontType, fontSize: CGFloat, color: UIColor? = nil) {
        let image = UIImage.iconFont(icon, fontSize: fontSize, color: color)
        self.image = image
    }
    
}
