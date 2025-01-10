//
//  JXSegmentedTitleSeparatorCell.swift
//  JXSegmentedSeparatorDataSource
//
//  Created by Choshim.Wei on 2025/1/9.
//

import JXSegmentedView

public class JXSegmentedTitleSeparatorCell: JXSegmentedTitleCell {
    private lazy var separatorLine: UIView = {
        let line = UIView()
        line.isHidden = true
        return line
    }()
    
    public override func commonInit() {
        super.commonInit()
        contentView.addSubview(separatorLine)
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        guard let itemModel = itemModel as? JXSegmentedTitleSeparatorItemModel else {
            return
        }
        
        self.separatorLine.frame = CGRect(
            x: self.bounds.width - itemModel.separatorSize.width + itemModel.cellItemSpacing / 2.0,
            y: (self.bounds.height - itemModel.separatorSize.height) / 2.0,
            width: itemModel.separatorSize.width,
            height: itemModel.separatorSize.height
        )
    }
    
    public override func reloadData(itemModel: JXSegmentedBaseItemModel, selectedType: JXSegmentedViewItemSelectedType) {
        super.reloadData(itemModel: itemModel, selectedType: selectedType)
        guard let itemModel = itemModel as? JXSegmentedTitleSeparatorItemModel else {
            return
        }
        self.separatorLine.backgroundColor = itemModel.separatorColor
        self.separatorLine.isHidden = itemModel.separatorStyle == .none
    }
}
