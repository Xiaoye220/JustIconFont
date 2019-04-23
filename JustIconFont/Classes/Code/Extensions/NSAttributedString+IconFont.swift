//
//  NSAttributedString+IconFont.swift
//  JustIconFont
//
//  Created by YZF on 2019/4/22.
//

import Foundation
import UIKit

extension NSAttributedString {
    public static func attributes(size fontSize: CGFloat, icon: IconFontType, color: UIColor?) -> [NSAttributedString.Key: Any] {
        var attributes = [NSAttributedString.Key: Any]()
        attributes[NSAttributedString.Key.font] = UIFont(iconFont: icon, size: fontSize)
        if let color = color {
            attributes[NSAttributedString.Key.foregroundColor] = color
        }
        
        return attributes
    }
    
    public static func attributedString(size fontSize: CGFloat, icon: IconFontType, color: UIColor?) -> NSAttributedString {
        let attributes = self.attributes(size: fontSize, icon: icon, color: color)
        let attributedString = NSAttributedString(string: icon.unicode, attributes: attributes)
        
        return attributedString
    }
}
