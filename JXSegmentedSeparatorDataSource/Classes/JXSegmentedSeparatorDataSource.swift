//
//  JXSegmentedSeparatorDataSource.swift
//  JXSegmentedSeparatorDataSource
//
//  Created by Choshim.Wei on 2025/1/9.
//

import JXSegmentedView

/// 分割线样式
public enum JXSegmentedSeparatorStyle {
    case none
    case singleLine
}

public protocol JXSegmentedSeparatorDataSource: AnyObject {
    /// 分割线的样式
    var separatorStyle: JXSegmentedSeparatorStyle { get }
    /// 分割线的颜色
    var separatorColor: UIColor { get }
    /// 分割线的宽度
    var separatorSize: CGSize { get }
}
