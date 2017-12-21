//
//  UIBarButtonItem+Extensions.swift
//  IconFont
//
//  Created by YZF on 2017/12/20.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit

extension UIBarButtonItem {
    
    public enum UIBarButtonItemIconType {
        case title
        case image
    }
    
    public static func iconFont(size: CGFloat, icon: IconFontType, color: UIColor? = nil, type: UIBarButtonItemIconType = .image) -> UIBarButtonItem {
        let barButtonItem = UIBarButtonItem()
        barButtonItem.iconFont(size: size, icon: icon, color: color, type: type)
        return barButtonItem
    }
    
    public func iconFont(size: CGFloat, icon: IconFontType, color: UIColor? = nil, type: UIBarButtonItemIconType = .image) {
        switch type {
        case .image:
            image = UIImage.iconFont(size: size, icon: icon, color: color)
            tintColor = color
        case .title:
            var attributes = [NSAttributedStringKey: Any]()
            attributes[NSAttributedStringKey.font] = UIFont(iconFont: icon, size: size)
            if let color = color {
                attributes[NSAttributedStringKey.foregroundColor] = color
            }
            setTitleTextAttributes(attributes, for: .normal)
            title = icon.unicode
        }
    }
}
