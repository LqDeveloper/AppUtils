//
//  AppUtils+UITabBarItem.swift
//  AppUtils
//
//  Created by Quan Li on 2019/8/20.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit

extension AppUtils where Base:UITabBarItem{
    public func selectedImage(_ selectedImage: UIImage?)->AppUtils{
        self.base.selectedImage = selectedImage
        return self
    }
    
    public func badgeValue(_ badgeValue: String?)->AppUtils{
        self.base.badgeValue = badgeValue
        return self
    }
    
    public func titlePositionAdjustment(_ titlePositionAdjustment: UIOffset?)->AppUtils{
        guard let tp = titlePositionAdjustment else{
            return self
        }
        self.base.titlePositionAdjustment = tp
        return self
    }
    
    public func badgeColor(_ badgeColor: UIColor?)->AppUtils{
        if #available(iOS 10.0, *){
            self.base.badgeColor = badgeColor
        }
        return self
    }
    
    public func setBadgeTextAttributes(_ textAttributes: [NSAttributedString.Key : Any]?, for state: UIControl.State)->AppUtils{
        if #available(iOS 10.0, *){
            self.base.setBadgeTextAttributes(textAttributes, for: state)
        }
        return self
    }
}
