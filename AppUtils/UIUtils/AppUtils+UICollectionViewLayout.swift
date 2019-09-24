//
//  AppUtils+UICollectionViewLayout.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 lq. All rights reserved.
//

import UIKit

extension UICollectionViewFlowLayout:AppUtilsProtocol{}
public extension AppUtils where Base:UICollectionViewFlowLayout{
    func minimumLineSpacing(_ minimumLineSpacing:CGFloat) -> AppUtils{
        self.base.minimumLineSpacing = minimumLineSpacing
        return self
    }
    
    func minimumInteritemSpacing(_ minimumInteritemSpacing:CGFloat) -> AppUtils{
        self.base.minimumInteritemSpacing = minimumInteritemSpacing
        return self
    }
    
    func itemSize(_ itemSize:CGSize) -> AppUtils{
        self.base.itemSize = itemSize
        return self
    }
    
    func estimatedItemSize(_ estimatedItemSize:CGSize) -> AppUtils{
        self.base.estimatedItemSize = estimatedItemSize
        return self
    }
    
    func scrollDirection(_ scrollDirection:UICollectionView.ScrollDirection) -> AppUtils{
        self.base.scrollDirection = scrollDirection
        return self
    }
    
    func headerReferenceSize(_ headerReferenceSize:CGSize) -> AppUtils{
        self.base.headerReferenceSize = headerReferenceSize
        return self
    }
    
    func footerReferenceSize(_ footerReferenceSize:CGSize) -> AppUtils{
        self.base.footerReferenceSize = footerReferenceSize
        return self
    }
    
    func sectionInset(_ sectionInset:UIEdgeInsets) -> AppUtils{
        self.base.sectionInset = sectionInset
        return self
    }
    
    @available(iOS 11.0, *)
    func sectionInsetReference(_ sectionInsetReference:UICollectionViewFlowLayout.SectionInsetReference) -> AppUtils{
        self.base.sectionInsetReference = sectionInsetReference
        return self
    }
    
    func sectionHeadersPinToVisibleBounds(_ sectionHeadersPinToVisibleBounds:Bool) -> AppUtils{
        self.base.sectionHeadersPinToVisibleBounds = sectionHeadersPinToVisibleBounds
        return self
    }
    
    func sectionFootersPinToVisibleBounds(_ sectionFootersPinToVisibleBounds:Bool) -> AppUtils{
        self.base.sectionFootersPinToVisibleBounds = sectionFootersPinToVisibleBounds
        return self
    }
}

