//
//  AppUtils+UICollectionView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 lq. All rights reserved.
//

import UIKit
public extension AppUtils where Base:UICollectionView{
    func collectionViewLayout(_ collectionViewLayout:UICollectionViewLayout) -> AppUtils{
        self.base.collectionViewLayout = collectionViewLayout
        return self
    }
    
    
    func dataSource(_ dataSource:UICollectionViewDataSource?) -> AppUtils{
        self.base.dataSource = dataSource
        return self
    }
    
    func delegate(_ delegate:UICollectionViewDelegate?) -> AppUtils{
        self.base.delegate = delegate
        return self
    }
    
    @available(iOS 10.0, *)
    func prefetchDataSource(_ prefetchDataSource:UICollectionViewDataSourcePrefetching?) -> AppUtils{
        self.base.prefetchDataSource = prefetchDataSource
        return self
    }
    
    @available(iOS 10.0, *)
    func isPrefetchingEnabled(_ isPrefetchingEnabled:Bool) -> AppUtils{
        self.base.isPrefetchingEnabled = isPrefetchingEnabled
        return self
    }
    
    @available(iOS 11.0, *)
    func dragDelegate(_ dragDelegate:UICollectionViewDragDelegate?) -> AppUtils{
        self.base.dragDelegate = dragDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    func dropDelegate(_ dropDelegate:UICollectionViewDropDelegate?) -> AppUtils{
        self.base.dropDelegate = dropDelegate
        return self
    }
    
    @available(iOS 11.0, *)
    func dragInteractionEnabled(_ dragInteractionEnabled:Bool) -> AppUtils{
        self.base.dragInteractionEnabled = dragInteractionEnabled
        return self
    }
    
    @available(iOS 11.0, *)
    func reorderingCadence(_ reorderingCadence:UICollectionView.ReorderingCadence) -> AppUtils{
        self.base.reorderingCadence = reorderingCadence
        return self
    }
    
    func backgroundView(_ backgroundView:UIView?) -> AppUtils{
        self.base.backgroundView = backgroundView
        return self
    }
    
    func register(_ nib: UINib?, forCellReuseIdentifier identifier: String) -> AppUtils{
        self.base.register(nib, forCellWithReuseIdentifier: identifier)
        return self
    }
    func register(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String) -> AppUtils{
        self.base.register(cellClass, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    func register(_ nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String) -> AppUtils{
        self.base.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier)
        return self
    }
    
    func register(_ viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String) -> AppUtils{
        self.base.register(viewClass, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: identifier)
        return self
    }
    
    func allowsSelection(_ allowsSelection: Bool) -> AppUtils{
        self.base.allowsSelection = allowsSelection
        return self
    }
    
    func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> AppUtils{
        self.base.allowsMultipleSelection = allowsMultipleSelection
        return self
    }
}
