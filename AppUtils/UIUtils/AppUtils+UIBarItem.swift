//
//  AppUtils+UIBarItem.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/22.
//  Copyright © 2019 lq. All rights reserved.
//

import UIKit

public extension AppUtils where Base:UIBarItem{
    func isEnabled(_ isEnabled:Bool) -> AppUtils{
        self.base.isEnabled = isEnabled
        return self
    }
    
    func title(_ title:String?) -> AppUtils{
        self.base.title = title
        return self
    }
    
    func image(_ image:UIImage?) -> AppUtils{
        self.base.image = image
        return self
    }
    
    func landscapeImagePhone(_ landscapeImagePhone:UIImage?) -> AppUtils{
        self.base.landscapeImagePhone = landscapeImagePhone
        return self
    }
    
    @available(iOS 11.0, *)
    func largeContentSizeImage(_ largeContentSizeImage:UIImage?) -> AppUtils{
        self.base.largeContentSizeImage = largeContentSizeImage
        return self
    }
    
    func imageInsets(_ imageInsets:UIEdgeInsets) -> AppUtils{
        self.base.imageInsets = imageInsets
        return self
    }
    
    func landscapeImagePhoneInsets(_ landscapeImagePhoneInsets:UIEdgeInsets) -> AppUtils{
        self.base.landscapeImagePhoneInsets = landscapeImagePhoneInsets
        return self
    }
    
    @available(iOS 11.0, *)
    func largeContentSizeImageInsets(_ largeContentSizeImageInsets:UIEdgeInsets) -> AppUtils{
        self.base.largeContentSizeImageInsets = largeContentSizeImageInsets
        return self
    }
}
