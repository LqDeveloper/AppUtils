//
//  AppUtils+UITabBar.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/22.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import Foundation
extension AppUtils where Base:UITabBar{
    
    public func delegate(_ delegate:UITabBarDelegate?)->AppUtils{
        self.base.delegate = delegate
        return self
    }
    
    public func items(_ items:[UITabBarItem]?)->AppUtils{
        self.base.items = items
        return self
    }
    
    public func selectedItem(_ selectedItem:UITabBarItem?)->AppUtils{
        self.base.selectedItem = selectedItem
        return self
    }
    
    public func tintColor(_ tintColor:UIColor?)->AppUtils{
        self.base.tintColor = tintColor
        return self
    }
    
    public func barTintColor(_ barTintColor:UIColor?)->AppUtils{
        self.base.barTintColor = barTintColor
        return self
    }
    
    public func unselectedItemTintColor(_ unselectedItemTintColor:UIColor!)->AppUtils{
        if #available(iOS 10.0, *){
            self.base.unselectedItemTintColor = unselectedItemTintColor
        }
        return self
    }
    
    @available(iOS, introduced: 5.0, deprecated: 8.0, message: "Use tintColor")
    public func selectedImageTintColor(_ selectedImageTintColor:UIColor!)->AppUtils{
        self.base.selectedImageTintColor = selectedImageTintColor
        return self
    }
    
    public func backgroundImage(_ backgroundImage:UIImage?)->AppUtils{
        self.base.backgroundImage = backgroundImage
        return self
    }
    
    public func selectionIndicatorImage(_ selectionIndicatorImage:UIImage?)->AppUtils{
        self.base.selectionIndicatorImage = selectionIndicatorImage
        return self
    }
    
    public func shadowImage(_ shadowImage:UIImage?)->AppUtils{
        self.base.shadowImage = shadowImage
        return self
    }
    
    public func itemPositioning(_ itemPositioning:UITabBar.ItemPositioning)->AppUtils{
        self.base.itemPositioning = itemPositioning
        return self
    }
    
    public func itemWidth(_ itemWidth:CGFloat)->AppUtils{
        self.base.itemWidth = itemWidth
        return self
    }
    
    public func itemSpacing(_ itemSpacing:CGFloat)->AppUtils{
        self.base.itemSpacing = itemSpacing
        return self
    }
    
    public func barStyle(_ barStyle:UIBarStyle)->AppUtils{
        self.base.barStyle = barStyle
        return self
    }
    
    public func isTranslucent(_ isTranslucent:Bool)->AppUtils{
        self.base.isTranslucent = isTranslucent
        return self
    }
}
