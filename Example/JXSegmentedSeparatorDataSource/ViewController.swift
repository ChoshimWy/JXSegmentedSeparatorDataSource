//
//  ViewController.swift
//  JXSegmentedSeparatorDataSource
//
//  Created by Choshim.Wei on 01/09/2025.
//  Copyright (c) 2025 Choshim.Wei. All rights reserved.
//

import UIKit
import JXSegmentedView
import JXSegmentedSeparatorDataSource

class ViewController: UIViewController {
    
    lazy var dataSource: JXSegmentedTitleSeparatorDataSource = {
        let dataSource = JXSegmentedTitleSeparatorDataSource()
        dataSource.titles = [
            "推荐",
            "热点",
            "关注",
            "科技",
        ]
        dataSource.titleSelectedColor = UIColor.white
        dataSource.titleNormalColor = UIColor.gray
        dataSource.isTitleColorGradientEnabled = true
        dataSource.isTitleZoomEnabled = true
        dataSource.titleSelectedZoomScale = 1
        dataSource.separatorStyle = .singleLine
        dataSource.separatorSize = CGSize(width: 1, height: 34)
        dataSource.itemSpacing = 0
        dataSource.itemWidth = view.bounds.width / 4
        return dataSource
    }()
    
    private lazy var lineView: JXSegmentedIndicatorLineView = {
        let view = JXSegmentedIndicatorLineView()
        view.indicatorWidth = 20
        view.indicatorHeight = 2
        view.verticalOffset = 6
        view.lineStyle = .lengthenOffset
        return view
    }()

    private lazy var segmentView: JXSegmentedView = {
        let view = JXSegmentedView()
        view.dataSource = dataSource
        view.isContentScrollViewClickTransitionAnimationEnabled = true
        
        let indicator = JXSegmentedIndicatorBackgroundView()
        indicator.indicatorCornerRadius = 0
        indicator.indicatorHeight = 34
        indicator.indicatorWidthIncrement = 0
        indicator.indicatorColor = UIColor.orange
        view.indicators = [indicator]
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        segmentView.frame = CGRect(x: 0, y: 100, width: view.bounds.width, height: 50)
        view.addSubview(segmentView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

