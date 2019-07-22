//
//  AppUtils+UITableView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
extension AppUtils where Base:UITableView{
    public func dataSource(_ dataSource:UITableViewDataSource?)->AppUtils{
        self.base.dataSource = dataSource
        return self
    }
    
    public func delegate(_ delegate:UITableViewDelegate?)->AppUtils{
        self.base.delegate = delegate
        return self
    }
    
    public func prefetchDataSource(_ prefetchDataSource:UITableViewDataSourcePrefetching?)->AppUtils{
        if #available(iOS 10.0, *){
            self.base.prefetchDataSource = prefetchDataSource
        }
        return self
    }
    
    @available(iOS 11.0, *)
    public func dragDelegate(_ dragDelegate:UITableViewDragDelegate?)->AppUtils{
        self.base.dragDelegate = dragDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    public func dropDelegate(_ dropDelegate:UITableViewDropDelegate?)->AppUtils{
        self.base.dropDelegate = dropDelegate
        return self
    }
    
    public func rowHeight(_ rowHeight:CGFloat)->AppUtils{
        self.base.rowHeight = rowHeight
        return self
    }
    
    public func sectionHeaderHeight(_ sectionHeaderHeight:CGFloat)->AppUtils{
        self.base.sectionHeaderHeight = sectionHeaderHeight
        return self
    }
    
    public func sectionFooterHeight(_ sectionFooterHeight:CGFloat)->AppUtils{
        self.base.sectionFooterHeight = sectionFooterHeight
        return self
    }
    
    public func estimatedRowHeight(_ estimatedRowHeight:CGFloat)->AppUtils{
        self.base.estimatedRowHeight = estimatedRowHeight
        return self
    }
    
    
    public func estimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight:CGFloat)->AppUtils{
        self.base.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight
        return self
    }
    
    public func estimatedSectionFooterHeight(_ estimatedSectionFooterHeight:CGFloat)->AppUtils{
        self.base.estimatedSectionFooterHeight = estimatedSectionFooterHeight
        return self
    }
    
    public func separatorInset(_ separatorInset:UIEdgeInsets)->AppUtils{
        self.base.separatorInset = separatorInset
        return self
    }
    
    @available(iOS 11.0, *)
    public func separatorInsetReference(_ separatorInsetReference:UITableView.SeparatorInsetReference)->AppUtils{
        self.base.separatorInsetReference = separatorInsetReference
        return self
    }
    
    public func backgroundView(_ backgroundView:UIView?)->AppUtils{
        self.base.backgroundView = backgroundView
        return self
    }
    
    public func isEditing(_ isEditing:Bool)->AppUtils{
        self.base.isEditing = isEditing
        return self
    }
    
    public func allowsSelection(_ allowsSelection:Bool)->AppUtils{
        self.base.allowsSelection = allowsSelection
        return self
    }
    
    public func allowsSelectionDuringEditing(_ allowsSelectionDuringEditing:Bool)->AppUtils{
        self.base.allowsSelectionDuringEditing = allowsSelectionDuringEditing
        return self
    }
    
    public func allowsMultipleSelection(_ allowsMultipleSelection:Bool)->AppUtils{
        self.base.allowsMultipleSelection = allowsMultipleSelection
        return self
    }
    
    public func allowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing:Bool)->AppUtils{
        self.base.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing
        return self
    }
    
    public func sectionIndexMinimumDisplayRowCount(_ sectionIndexMinimumDisplayRowCount:Int)->AppUtils{
        self.base.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount
        return self
    }
    
    public func sectionIndexColor(_ sectionIndexColor:UIColor?)->AppUtils{
        self.base.sectionIndexColor = sectionIndexColor
        return self
    }
    
    public func sectionIndexBackgroundColor(_ sectionIndexBackgroundColor:UIColor?)->AppUtils{
        self.base.sectionIndexBackgroundColor = sectionIndexBackgroundColor
        return self
    }
    
    public func sectionIndexTrackingBackgroundColor(_ sectionIndexTrackingBackgroundColor:UIColor?)->AppUtils{
        self.base.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor
        return self
    }
    
    public func separatorStyle(_ separatorStyle:UITableViewCell.SeparatorStyle)->AppUtils{
        self.base.separatorStyle = separatorStyle
        return self
    }
    
    public func separatorColor(_ separatorColor:UIColor?)->AppUtils{
        self.base.separatorColor = separatorColor
        return self
    }
    
    public func separatorEffect(_ separatorEffect:UIVisualEffect?)->AppUtils{
        self.base.separatorEffect = separatorEffect
        return self
    }
    
    public func cellLayoutMarginsFollowReadableWidth(_ cellLayoutMarginsFollowReadableWidth:Bool)->AppUtils{
        self.base.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth
        return self
    }
    
    public func insetsContentViewsToSafeArea(_ insetsContentViewsToSafeArea:Bool)->AppUtils{
        if #available(iOS 11.0, *){
            self.base.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea
        }
        return self
    }
    
    public func tableHeaderView(_ tableHeaderView:UIView?)->AppUtils{
        self.base.tableHeaderView = tableHeaderView
        return self
    }
    
    public func tableFooterView(_ tableFooterView:UIView?)->AppUtils{
        self.base.tableFooterView = tableFooterView
        return self
    }
    public func register(_ nib: UINib?, forCellReuseIdentifier identifier: String)->AppUtils{
        self.base.register(nib, forCellReuseIdentifier: identifier)
        return self
    }
    public func register(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String)->AppUtils{
        self.base.register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }
    public func register(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String)->AppUtils{
        self.base.register(nib, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    public func register(_ aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String)->AppUtils{
        self.base.register(aClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    public func remembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath:Bool)->AppUtils{
        self.base.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath
        return self
    }
    
    public func dragInteractionEnabled(_ dragInteractionEnabled:Bool)->AppUtils{
        if #available(iOS 11.0, *){
            self.base.dragInteractionEnabled = dragInteractionEnabled
        }
        return self
    }
}
