//
//  IconFontType.swift
//  IconFont
//
//  Created by YZF on 15/12/17.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit


public protocol IconFontType: RawRepresentable where RawValue == String {
    
    /// fontName is not necessarily equal to .ttf file name
    var name: String { get }
    
    var filePath: String? { get }
    
    var unicode: String { get }
}

extension IconFontType {
    
    
//    init?(rawValue: IconFontType.RawValue) {
//        self.rawValue = rawValue
//    }
    
//    var filePath: String {
//        return ""
//    }
    
//    var unicode: String {
//        return
//    }
    
    func loadFont() -> Bool {
        
        if UIFont.fontNames(forFamilyName: name).count > 0 {
            return true
        }

        guard let filePath = filePath,
            let fontData = NSData(contentsOfFile: filePath),
            let dataProvider = CGDataProvider(data: fontData),
            let cgFont = CGFont(dataProvider) else {
                return false
        }
        
        var error: Unmanaged<CFError>?
        
        if !CTFontManagerRegisterGraphicsFont(cgFont, &error) {
            let errorDescription: CFString = CFErrorCopyDescription(error!.takeUnretainedValue())
            print("Unable to load font: \(errorDescription)")
            return false
        }

        return true
    }
}
