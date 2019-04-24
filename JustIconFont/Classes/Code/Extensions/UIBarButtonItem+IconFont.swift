//
//  UIBarButtonItem+IconFont.swift
//  IconFont
//
//  Created by YZF on 2017/12/20.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit

public extension UIBarButtonItem {
    
    enum UIBarButtonItemIconType {
        case title
        case image
    }
    
    func iconFont(_ icon: IconFontType, fontSize: CGFloat, color: UIColor? = nil, type: UIBarButtonItemIconType = .image) {
        switch type {
        case .image:
            image = UIImage.iconFont(icon, fontSize: fontSize, color: color)
            tintColor = color
        case .title:
            let attributes = NSAttributedString.attributes(with: icon, fontSize: fontSize, color: color)
            setTitleTextAttributes(attributes, for: .normal)
            title = icon.unicode
        }
    }
}
