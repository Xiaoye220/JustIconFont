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
    
    public static func iconFont(size fontSize: CGFloat, icon: IconFontType, color: UIColor?) -> UIImage {
        var attributes = [NSAttributedStringKey: Any]()
        attributes[NSAttributedStringKey.font] = UIFont(iconFont: icon, size: fontSize)
        if let color = color {
            attributes[NSAttributedStringKey.foregroundColor] = color
        }
        let attributedString = NSAttributedString(string: icon.unicode, attributes: attributes)
        
        let rect = attributedString.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: fontSize), options: .usesLineFragmentOrigin, context: nil)

        let imageSize: CGSize = rect.size
        UIGraphicsBeginImageContextWithOptions(imageSize, false, UIScreen.main.scale)

        attributedString.draw(in: rect)
        
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }

}
