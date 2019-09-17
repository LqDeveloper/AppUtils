//
//  AppUtils+UITableView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 lq. All rights reserved.
//

import UIKit
public extension AppUtils where Base:UITableView{
    func dataSource(_ dataSource:UITableViewDataSource?)->AppUtils{
        self.base.dataSource = dataSource
        return self
    }
    
    func delegate(_ delegate:UITableViewDelegate?)->AppUtils{
        self.base.delegate = delegate
        return self
    }
    
    @available(iOS 10.0, *)
    func prefetchDataSource(_ prefetchDataSource:UITableViewDataSourcePrefetching?)->AppUtils{
        self.base.prefetchDataSource = prefetchDataSource
        return self
    }
    
    @available(iOS 11.0, *)
    func dragDelegate(_ dragDelegate:UITableViewDragDelegate?)->AppUtils{
        self.base.dragDelegate = dragDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    func dropDelegate(_ dropDelegate:UITableViewDropDelegate?)->AppUtils{
        self.base.dropDelegate = dropDelegate
        return self
    }
    
    func rowHeight(_ rowHeight:CGFloat)->AppUtils{
        self.base.rowHeight = rowHeight
        return self
    }
    
    func sectionHeaderHeight(_ sectionHeaderHeight:CGFloat)->AppUtils{
        self.base.sectionHeaderHeight = sectionHeaderHeight
        return self
    }
    
    func sectionFooterHeight(_ sectionFooterHeight:CGFloat)->AppUtils{
        self.base.sectionFooterHeight = sectionFooterHeight
        return self
    }
    
    func estimatedRowHeight(_ estimatedRowHeight:CGFloat)->AppUtils{
        self.base.estimatedRowHeight = estimatedRowHeight
        return self
    }
    
    
    func estimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight:CGFloat)->AppUtils{
        self.base.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight
        return self
    }
    
    func estimatedSectionFooterHeight(_ estimatedSectionFooterHeight:CGFloat)->AppUtils{
        self.base.estimatedSectionFooterHeight = estimatedSectionFooterHeight
        return self
    }
    
    func separatorInset(_ separatorInset:UIEdgeInsets)->AppUtils{
        self.base.separatorInset = separatorInset
        return self
    }
    
    @available(iOS 11.0, *)
    func separatorInsetReference(_ separatorInsetReference:UITableView.SeparatorInsetReference)->AppUtils{
        self.base.separatorInsetReference = separatorInsetReference
        return self
    }
    
    func backgroundView(_ backgroundView:UIView?)->AppUtils{
        self.base.backgroundView = backgroundView
        return self
    }
    
    func isEditing(_ isEditing:Bool)->AppUtils{
        self.base.isEditing = isEditing
        return self
    }
    
    func allowsSelection(_ allowsSelection:Bool)->AppUtils{
        self.base.allowsSelection = allowsSelection
        return self
    }
    
    func allowsSelectionDuringEditing(_ allowsSelectionDuringEditing:Bool)->AppUtils{
        self.base.allowsSelectionDuringEditing = allowsSelectionDuringEditing
        return self
    }
    
    func allowsMultipleSelection(_ allowsMultipleSelection:Bool)->AppUtils{
        self.base.allowsMultipleSelection = allowsMultipleSelection
        return self
    }
    
    func allowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing:Bool)->AppUtils{
        self.base.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing
        return self
    }
    
    func sectionIndexMinimumDisplayRowCount(_ sectionIndexMinimumDisplayRowCount:Int)->AppUtils{
        self.base.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount
        return self
    }
    
    func sectionIndexColor(_ sectionIndexColor:UIColor?)->AppUtils{
        self.base.sectionIndexColor = sectionIndexColor
        return self
    }
    
    func sectionIndexBackgroundColor(_ sectionIndexBackgroundColor:UIColor?)->AppUtils{
        self.base.sectionIndexBackgroundColor = sectionIndexBackgroundColor
        return self
    }
    
    func sectionIndexTrackingBackgroundColor(_ sectionIndexTrackingBackgroundColor:UIColor?)->AppUtils{
        self.base.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor
        return self
    }
    
    func separatorStyle(_ separatorStyle:UITableViewCell.SeparatorStyle)->AppUtils{
        self.base.separatorStyle = separatorStyle
        return self
    }
    
    func separatorColor(_ separatorColor:UIColor?)->AppUtils{
        self.base.separatorColor = separatorColor
        return self
    }
    
    func separatorEffect(_ separatorEffect:UIVisualEffect?)->AppUtils{
        self.base.separatorEffect = separatorEffect
        return self
    }
    
    func cellLayoutMarginsFollowReadableWidth(_ cellLayoutMarginsFollowReadableWidth:Bool)->AppUtils{
        self.base.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth
        return self
    }
    
    @available(iOS 11.0, *)
    func insetsContentViewsToSafeArea(_ insetsContentViewsToSafeArea:Bool)->AppUtils{
        self.base.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea
        return self
    }
    
    func tableHeaderView(_ tableHeaderView:UIView?)->AppUtils{
        self.base.tableHeaderView = tableHeaderView
        return self
    }
    
    func tableFooterView(_ tableFooterView:UIView?)->AppUtils{
        self.base.tableFooterView = tableFooterView
        return self
    }
    func register(_ nib: UINib?, forCellReuseIdentifier identifier: String)->AppUtils{
        self.base.register(nib, forCellReuseIdentifier: identifier)
        return self
    }
    func register(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String)->AppUtils{
        self.base.register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }
    func register(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)->AppUtils{
        self.base.register(nib, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    func register(_ aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)->AppUtils{
        self.base.register(aClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    func remembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath:Bool)->AppUtils{
        self.base.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath
        return self
    }
    
    @available(iOS 11.0, *)
    func dragInteractionEnabled(_ dragInteractionEnabled:Bool)->AppUtils{
        self.base.dragInteractionEnabled = dragInteractionEnabled
        return self
    }
}
