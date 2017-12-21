//
//  IconFontType.swift
//  IconFont
//
//  Created by YZF on 15/12/17.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit


public protocol IconFontType {
    static var fontName: String { get }
    
    static var fontFilePath: String? { get set }
    
    var unicode: String { get }
}

extension IconFontType {
    
    var fontName: String {
        return Self.fontName
    }
    
    func loadFont() -> Bool {
        if UIFont.fontNames(forFamilyName: fontName).count > 0 {
            return true
        }

        guard let filePath = Self.fontFilePath,
            let fontData = NSData(contentsOfFile: filePath),
            let dataProvider = CGDataProvider(data: fontData),
            let cgFont = CGFont(dataProvider) else {
                return false
        }
        
        var error: Unmanaged<CFError>?
        
        if !CTFontManagerRegisterGraphicsFont(cgFont, &error) {
            let errorDescription: CFString = CFErrorCopyDescription(error!.takeUnretainedValue())
            print("Unable to load font: %@", errorDescription, terminator: "")
            return false
        }
        
        return true
    }
}


public protocol IconFontViewType {
    func iconFont(size fontSize: CGFloat, icon: IconFontType, color: UIColor?)
}

extension IconFontViewType {
    func attributes(size fontSize: CGFloat, icon: IconFontType, color: UIColor?) -> [NSAttributedStringKey: Any] {
        var attributes = [NSAttributedStringKey: Any]()
        attributes[NSAttributedStringKey.font] = UIFont(iconFont: icon, size: fontSize)
        if let color = color {
            attributes[NSAttributedStringKey.foregroundColor] = color
        }
        
        return attributes
    }
}

extension UIFont {
    public convenience init?(iconFont iconFontType: IconFontType, size fontSize: CGFloat) {
        if !iconFontType.loadFont() { return nil }
        self.init(name: iconFontType.fontName, size: fontSize)
    }
}

