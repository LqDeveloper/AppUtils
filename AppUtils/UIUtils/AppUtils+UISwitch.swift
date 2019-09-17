//
//  AppUtils+UISwitch.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 lq. All rights reserved.
//

import UIKit
public extension AppUtils where Base:UISwitch{
    func onTintColor(_ onTintColor:UIColor?)->AppUtils{
        self.base.onTintColor = onTintColor
        return self
    }
    
    func tintColor(_ tintColor:UIColor?)->AppUtils{
        self.base.tintColor = tintColor
        return self
    }
    
    func thumbTintColor(_ thumbTintColor:UIColor?)->AppUtils{
        self.base.thumbTintColor = thumbTintColor
        return self
    }
    
    func onImage(_ onImage:UIImage?)->AppUtils{
        self.base.onImage = onImage
        return self
    }
    
    func offImage(_ offImage:UIImage?)->AppUtils{
        self.base.offImage = offImage
        return self
    }
    
    func isOn(_ isOn:Bool)->AppUtils{
        self.base.isOn = isOn
        return self
    }
}

