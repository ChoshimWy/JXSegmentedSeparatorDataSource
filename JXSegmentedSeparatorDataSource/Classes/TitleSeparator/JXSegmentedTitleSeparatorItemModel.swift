//
//  JXSegmentedTitleSeparatorItemModel.swift
//  JXSegmentedSeparatorDataSource
//
//  Created by Choshim.Wei on 2025/1/9.
//

import JXSegmentedView

public class JXSegmentedTitleSeparatorItemModel: JXSegmentedTitleItemModel {
    /// 分割线的样式
    var separatorStyle: JXSegmentedSeparatorStyle = .none
    /// 分割线的颜色
    var separatorColor: UIColor = .gray
    /// 分割线的宽度
    var separatorSize: CGSize  = CGSize(width: 1, height: 10)
    ///
    var cellItemSpacing: CGFloat = 0
}
