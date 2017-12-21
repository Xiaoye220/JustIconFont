//
//  EnumUtils.swift
//  IconFont
//
//  Created by YZF on 2017/12/19.
//  Copyright © 2017年 Xiaoye. All rights reserved.
//

import Foundation

struct EnumUtils {
    /// 获取 Enum 所有的 类型
    ///
    /// AnyIterator:
    ///     迭代器，用于遍历。 Sequence 的基础就是 Iterator
    /// withUnsafeBytes:
    ///     将指定类型的变量转换成 buffer pointer
    ///     buffer pointer 以一系列字节的形式来读取内存。这意味着我们可以这些字节进行迭代，对其使用下标，或者使用 filter，map 以及 reduce 等。
    /// $0.load(as: T.self):
    ///     将 UnsafeRawBufferPointer 所指内存数据转换为指定类型的值
    static func iterateEnum<T: Hashable>(_: T.Type) -> AnyIterator<T> {
        var i = 0
        
        return AnyIterator {
            let next = withUnsafeBytes(of: &i) { $0.load(as: T.self) }
            if next.hashValue != i { return nil }
            i += 1
            return next
        }
    }
}
