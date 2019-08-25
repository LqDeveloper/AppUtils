//
//  AppUtils+UIControll.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
public extension AppUtils where Base:UIControl{
    func isEnabled(_ isEnabled:Bool)->AppUtils{
        self.base.isEnabled = isEnabled
        return self
    }
    func isSelected(_ isSelected:Bool)->AppUtils{
        self.base.isSelected = isSelected
        return self
    }
    
    func isHighlighted(_ isHighlighted:Bool)->AppUtils{
        self.base.isHighlighted = isHighlighted
        return self
    }
    
    func contentVerticalAlignment(_ contentVerticalAlignment:UIControl.ContentVerticalAlignment)->AppUtils{
        self.base.contentVerticalAlignment = contentVerticalAlignment
        return self
    }
    
    func contentHorizontalAlignment(_ contentHorizontalAlignment:UIControl.ContentHorizontalAlignment)->AppUtils{
        self.base.contentHorizontalAlignment = contentHorizontalAlignment
        return self
    }
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event)->AppUtils{
        self.base.addTarget(self, action: action, for: controlEvents)
        return self
    }
    
    func removeTarget(_ target: Any?, action: Selector?, for controlEvents: UIControl.Event)->AppUtils{
        self.base.removeTarget(self, action: action, for: controlEvents)
        return self
    }
}
