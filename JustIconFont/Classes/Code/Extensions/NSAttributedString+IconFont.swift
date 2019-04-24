//
//  NSAttributedString+IconFont.swift
//  JustIconFont
//
//  Created by YZF on 2019/4/22.
//

import Foundation
import UIKit

extension NSAttributedString {
    
    public static func iconFont(_ icon: IconFontType, fontSize: CGFloat, color: UIColor?) -> NSAttributedString {
        let attributes = self.attributes(with: icon, fontSize: fontSize, color: color)
        let attributedString = NSAttributedString(string: icon.unicode, attributes: attributes)
        
        return attributedString
    }
    
    internal static func attributes(with icon: IconFontType, fontSize: CGFloat, color: UIColor?) -> [NSAttributedString.Key: Any] {
        var attributes = [NSAttributedString.Key: Any]()
        attributes[NSAttributedString.Key.font] = UIFont(iconFont: icon, size: fontSize)
        if let color = color {
            attributes[NSAttributedString.Key.foregroundColor] = color
        }
        
        return attributes
    }

}
