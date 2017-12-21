//
//  UIImage+Extensions.swift
//  IconFont
//
//  Created by YZF on 2017/12/18.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {
    
    public static func iconFont(size: CGFloat, icon: IconFontType, color: UIColor?) -> UIImage {
        let imageSize: CGSize = CGSize(width: size, height: size)
        UIGraphicsBeginImageContextWithOptions(imageSize, false, UIScreen.main.scale)
        
        let label =  UILabel.iconFont(size: size, icon: icon, color: color)
        label.layer.render(in: UIGraphicsGetCurrentContext()!)
        
//        var attributes = [NSAttributedStringKey: Any]()
//        attributes[NSAttributedStringKey.font] = UIFont(iconFont: icon, size: size)
//        if let color = color {
//            attributes[NSAttributedStringKey.foregroundColor] = color
//        }
//        let attributedString = NSAttributedString(string: icon.unicode, attributes: attributes)
//        attributedString.draw(in: CGRect(x: 0, y: 0, width: size, height: size))
        
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        
        return image
    }

}
