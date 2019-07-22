//
//  AppUtils+UISwitch.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
extension AppUtils where Base:UISwitch{
    public func onTintColor(_ onTintColor:UIColor?)->AppUtils{
        self.base.onTintColor = onTintColor
        return self
    }
    
    public func tintColor(_ tintColor:UIColor?)->AppUtils{
        self.base.tintColor = tintColor
        return self
    }
    
    public func thumbTintColor(_ thumbTintColor:UIColor?)->AppUtils{
        self.base.thumbTintColor = thumbTintColor
        return self
    }
    
    public func onImage(_ onImage:UIImage?)->AppUtils{
        self.base.onImage = onImage
        return self
    }
    
    public func offImage(_ offImage:UIImage?)->AppUtils{
        self.base.offImage = offImage
        return self
    }
    
    public func isOn(_ isOn:Bool)->AppUtils{
        self.base.isOn = isOn
        return self
    }
}

