//
//  IconFontType.swift
//  IconFont
//
//  Created by YZF on 15/12/17.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit

class IconFontEmptyClass{}

public protocol IconFontType {
    
    /// font family name
    var name: String { get }
    
    /// path of .ttf file
    var filePath: String? { get }
    
    var unicode: String { get }
}

public extension IconFontType {
    
    
    /// default filePath when font family name is equel to ttf file's name
    var filePath: String? {
        if let filePath = Bundle.main.path(forResource: name, ofType: "ttf") {
            return filePath
            
        } else if let filePath = Bundle(for: IconFontEmptyClass.self).path(forResource: name, ofType: "ttf") {
            return filePath
            
        } else {
            return nil
        }
    }
    
    func loadFont() -> Bool {
        
        if !UIFont.fontNames(forFamilyName: name).isEmpty {
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
            print("Unable to load font \(name): \(errorDescription)")
            return false
        }

        return true
    }
}
