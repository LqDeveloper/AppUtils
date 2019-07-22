//
//  AppUtils+UICollectionView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
extension AppUtils where Base:UICollectionView{
    public func collectionViewLayout(_ collectionViewLayout:UICollectionViewLayout)->AppUtils{
        self.base.collectionViewLayout = collectionViewLayout
        return self
    }
    
    
    public func dataSource(_ dataSource:UICollectionViewDataSource?)->AppUtils{
        self.base.dataSource = dataSource
        return self
    }
    
    public func delegate(_ delegate:UICollectionViewDelegate?)->AppUtils{
        self.base.delegate = delegate
        return self
    }
    
    public func prefetchDataSource(_ prefetchDataSource:UICollectionViewDataSourcePrefetching?)->AppUtils{
        if #available(iOS 10.0, *){
            self.base.prefetchDataSource = prefetchDataSource
        }
        return self
    }
    
    public func isPrefetchingEnabled(_ isPrefetchingEnabled:Bool)->AppUtils{
        if #available(iOS 10.0, *){
            self.base.isPrefetchingEnabled = isPrefetchingEnabled
        }
        return self
    }
    
    @available(iOS 11.0, *)
    public func dragDelegate(_ dragDelegate:UICollectionViewDragDelegate?)->AppUtils{
        self.base.dragDelegate = dragDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    public func dropDelegate(_ dropDelegate:UICollectionViewDropDelegate?)->AppUtils{
        self.base.dropDelegate = dropDelegate
        return self
    }
    
    public func dragInteractionEnabled(_ dragInteractionEnabled:Bool)->AppUtils{
        if #available(iOS 11.0, *){
            self.base.dragInteractionEnabled = dragInteractionEnabled
        }
        return self
    }
    
    @available(iOS 11.0, *)
    public func reorderingCadence(_ reorderingCadence:UICollectionView.ReorderingCadence)->AppUtils{
       self.base.reorderingCadence = reorderingCadence
        return self
    }
    
    public func backgroundView(_ backgroundView:UIView?)->AppUtils{
        self.base.backgroundView = backgroundView
        return self
    }
    
    public func register(_ nib: UINib?, forCellReuseIdentifier identifier: String)->AppUtils{
        self.base.register(nib, forCellWithReuseIdentifier: identifier)
        return self
    }
    public func register(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String)->AppUtils{
        self.base.register(cellClass, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    public func register(_ nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String)->AppUtils{
        self.base.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier)
        return self
    }
    
    public func register(_ viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String)->AppUtils{
        self.base.register(viewClass, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: identifier)
        return self
    }
    
    public func allowsSelection(_ allowsSelection: Bool)->AppUtils{
        self.base.allowsSelection = allowsSelection
        return self
    }
    
    public func allowsMultipleSelection(_ allowsMultipleSelection: Bool)->AppUtils{
        self.base.allowsMultipleSelection = allowsMultipleSelection
        return self
    }
}
