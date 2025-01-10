//
//  JXSegmentedTitleSeparatorDataSource.swift
//  JXSegmentedSeparatorDataSource
//
//  Created by Choshim.Wei on 2025/1/9.
//

import JXSegmentedView

public class JXSegmentedTitleSeparatorDataSource: JXSegmentedTitleDataSource, JXSegmentedSeparatorDataSource {
    /// 分割线的样式
    public var separatorStyle: JXSegmentedSeparatorStyle = .none
    /// 分割线的颜色
    public var separatorColor: UIColor = .gray
    /// 分割线的宽度
    public var separatorSize: CGSize = CGSize(width: 1, height: 10)
    
    public override func preferredItemModelInstance() -> JXSegmentedBaseItemModel {
        return JXSegmentedTitleSeparatorItemModel()
    }
    
    public override func preferredRefreshItemModel(_ itemModel: JXSegmentedBaseItemModel, at index: Int, selectedIndex: Int) {
        super.preferredRefreshItemModel(itemModel, at: index, selectedIndex: selectedIndex)
        
        guard let separatorModel = itemModel as? JXSegmentedTitleSeparatorItemModel  else { return }
        separatorModel.separatorStyle = separatorStyle
        separatorModel.separatorColor = separatorColor
        separatorModel.separatorSize = separatorSize
        separatorModel.cellItemSpacing = self.itemSpacing
    }
  
    // MARK: - JXSegmentedTitleDataSource
    public override func registerCellClass(in segmentedView: JXSegmentedView) {
        segmentedView.collectionView.register(JXSegmentedTitleSeparatorCell.self, forCellWithReuseIdentifier: "cell")
    }
    
    public override func segmentedView(_ segmentedView: JXSegmentedView, cellForItemAt index: Int) -> JXSegmentedBaseCell {
        let cell = segmentedView.dequeueReusableCell(withReuseIdentifier: "cell", at: index) as! JXSegmentedTitleSeparatorCell

        if index == self.dataSource.count - 1, let separatorModel = self.dataSource.last as? JXSegmentedTitleSeparatorItemModel {
            separatorModel.separatorStyle = .none
        }
        return cell
    }
}
