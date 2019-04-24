//
//  IconFontEnumType.swift
//  JustIconFont
//
//  Created by Xiaoye on 2019/4/23.
//

import Foundation

public protocol IconFontEnumType: IconFontType, CaseIterable, RawRepresentable where RawValue == String {
    
}

public extension IconFontEnumType {
    var unicode: String {
        return self.rawValue
    }
}
