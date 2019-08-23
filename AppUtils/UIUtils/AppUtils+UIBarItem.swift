//
//  AppUtils+UIBarItem.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/22.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import Foundation
extension AppUtils where Base:UIBarItem{
    public func isEnabled(_ isEnabled:Bool)->AppUtils{
        self.base.isEnabled = isEnabled
        return self
    }
    
    public func title(_ title:String?)->AppUtils{
        self.base.title = title
        return self
    }
    
    public func image(_ image:UIImage?)->AppUtils{
        self.base.image = image
        return self
    }
    
    public func landscapeImagePhone(_ landscapeImagePhone:UIImage?)->AppUtils{
        self.base.landscapeImagePhone = landscapeImagePhone
        return self
    }
    
    public func largeContentSizeImage(_ largeContentSizeImage:UIImage?)->AppUtils{
        if #available(iOS 11.0, *){
            self.base.largeContentSizeImage = largeContentSizeImage
        }
        return self
    }
    
    public func imageInsets(_ imageInsets:UIEdgeInsets)->AppUtils{
        self.base.imageInsets = imageInsets
        return self
    }
    
    public func landscapeImagePhoneInsets(_ landscapeImagePhoneInsets:UIEdgeInsets)->AppUtils{
        self.base.landscapeImagePhoneInsets = landscapeImagePhoneInsets
        return self
    }
    
    public func largeContentSizeImageInsets(_ largeContentSizeImageInsets:UIEdgeInsets)->AppUtils{
        if #available(iOS 11.0, *){
            self.base.largeContentSizeImageInsets = largeContentSizeImageInsets
        }
        return self
    }
}
