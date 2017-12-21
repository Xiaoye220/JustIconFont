//
//  IconFont.swift
//  ExcelReader
//
//  Created by YZF on 25/8/17.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation
import UIKit

public enum IconFont: String {
    case FontAwesome
    case custom
}



/*
extension UIImage: IconFontType {
    static func iconFont(_ size: CGFloat, icon: IconFontConfig.Icon, color: UIColor?) -> UIImage {
        let imageSize: CGSize = CGSize(width: size, height: size)
        UIGraphicsBeginImageContextWithOptions(imageSize, false, UIScreen.main.scale)
        
        let label =  UILabel.iconFont(size, icon: icon, color: color)
        label.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        return image
    }
    
    func iconFont(_ size: CGFloat, icon: IconFontConfig.Icon, color: UIColor?) {

    }
}

extension UIBarButtonItem: IconFontType {
    static func iconFont(_ size: CGFloat, icon: IconFontConfig.Icon, color: UIColor?) -> UIBarButtonItem {
        let barButtonItem = UIBarButtonItem()
        barButtonItem.iconFont(size, icon: icon, color: color)
        return barButtonItem
    }
    
    func iconFont(_ size: CGFloat, icon: IconFontConfig.Icon, color: UIColor?) {
        let attributes = self.attributes(size, icon: icon, color: color)
        setTitleTextAttributes(attributes, for: .normal)
        title = icon.rawValue
    }
}

extension UILabel: IconFontType {
    static func iconFont(_ size: CGFloat, icon: IconFontConfig.Icon, color: UIColor?) -> UILabel {
        let label = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: size, height: size))
        label.iconFont(size, icon: icon, color: color)
        return label
    }
    
    func iconFont(_ size: CGFloat, icon: IconFontConfig.Icon, color: UIColor?) {
        let attributes = self.attributes(size, icon: icon, color: color)
        attributedText = NSAttributedString(string: icon.rawValue, attributes: attributes)
    }
}

extension UIButton: IconFontType {
    static func iconFont(_ size: CGFloat, icon: IconFontConfig.Icon, color: UIColor?) -> UIButton {
        let button = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: size, height: size))
        button.iconFont(size, icon: icon, color: color)
        return button
    }
    
    func iconFont(_ size: CGFloat, icon: IconFontConfig.Icon, color: UIColor?) {
        let attributes = self.attributes(size, icon: icon, color: color)
        let title = NSAttributedString.init(string: icon.rawValue, attributes: attributes)
        setAttributedTitle(title, for: .normal)
    }
}
 */
