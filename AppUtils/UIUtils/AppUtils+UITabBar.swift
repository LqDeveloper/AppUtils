//
//  AppUtils+UITabBar.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/22.
//  Copyright © 2019 lq. All rights reserved.
//

import UIKit

public extension AppUtils where Base:UITabBar{
    func delegate(_ delegate:UITabBarDelegate?) -> AppUtils{
        self.base.delegate = delegate
        return self
    }
    
    func items(_ items:[UITabBarItem]?) -> AppUtils{
        self.base.items = items
        return self
    }
    
    func selectedItem(_ selectedItem:UITabBarItem?) -> AppUtils{
        self.base.selectedItem = selectedItem
        return self
    }
    
    func tintColor(_ tintColor:UIColor?) -> AppUtils{
        self.base.tintColor = tintColor
        return self
    }
    
    func barTintColor(_ barTintColor:UIColor?) -> AppUtils{
        self.base.barTintColor = barTintColor
        return self
    }
    @available(iOS 10.0, *)
    func unselectedItemTintColor(_ unselectedItemTintColor:UIColor!) -> AppUtils{
        self.base.unselectedItemTintColor = unselectedItemTintColor
        return self
    }
    
    @available(iOS, introduced: 5.0, deprecated: 8.0, message: "Use tintColor")
    func selectedImageTintColor(_ selectedImageTintColor:UIColor!) -> AppUtils{
        self.base.selectedImageTintColor = selectedImageTintColor
        return self
    }
    
    func backgroundImage(_ backgroundImage:UIImage?) -> AppUtils{
        self.base.backgroundImage = backgroundImage
        return self
    }
    
    func selectionIndicatorImage(_ selectionIndicatorImage:UIImage?) -> AppUtils{
        self.base.selectionIndicatorImage = selectionIndicatorImage
        return self
    }
    
    func shadowImage(_ shadowImage:UIImage?) -> AppUtils{
        self.base.shadowImage = shadowImage
        return self
    }
    
    func itemPositioning(_ itemPositioning:UITabBar.ItemPositioning) -> AppUtils{
        self.base.itemPositioning = itemPositioning
        return self
    }
    
    func itemWidth(_ itemWidth:CGFloat) -> AppUtils{
        self.base.itemWidth = itemWidth
        return self
    }
    
    func itemSpacing(_ itemSpacing:CGFloat) -> AppUtils{
        self.base.itemSpacing = itemSpacing
        return self
    }
    
    func barStyle(_ barStyle:UIBarStyle) -> AppUtils{
        self.base.barStyle = barStyle
        return self
    }
    
    func isTranslucent(_ isTranslucent:Bool) -> AppUtils{
        self.base.isTranslucent = isTranslucent
        return self
    }
}
