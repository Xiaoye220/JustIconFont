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
    
    public static func iconFont(fontSize: CGFloat, icon: IconFontType, color: UIColor? = nil) -> UIImage {
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

    public static func iconFont(imageSize: CGSize, icon: IconFontType, color: UIColor? = nil) -> UIImage {
        var attributes = [NSAttributedStringKey: Any]()
        attributes[NSAttributedStringKey.font] = UIFont(iconFont: icon, size: 1)
        if let color = color {
            attributes[NSAttributedStringKey.foregroundColor] = color
        }
        var attributedString = NSAttributedString(string: icon.unicode, attributes: attributes)
        
        let rect = attributedString.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 1), options: .usesLineFragmentOrigin, context: nil)
        
        let widthScale = imageSize.width / rect.width
        let heightScale = imageSize.height / rect.height
        let scale = (widthScale < heightScale) ? widthScale : heightScale
        
        let scaledWidth = rect.width * scale
        let scaledHeight = rect.height * scale
        
        var anchorPoint = CGPoint.zero
        if(widthScale < heightScale){
            anchorPoint.y = (imageSize.height - scaledHeight) / 2
        } else if(widthScale > heightScale) {
            anchorPoint.x = (imageSize.width - scaledWidth) / 2
        }
        
        var anchorRect = CGRect.zero
        anchorRect.origin = anchorPoint
        anchorRect.size.width = scaledWidth
        anchorRect.size.height = scaledHeight
        
        attributes[NSAttributedStringKey.font] = UIFont(iconFont: icon, size: scale)
        attributedString = NSAttributedString(string: icon.unicode, attributes: attributes)
        
        UIGraphicsBeginImageContextWithOptions(imageSize, false, UIScreen.main.scale)
        
        attributedString.draw(in: anchorRect)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }

}
