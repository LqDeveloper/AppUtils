//
//  AppUtils+UIImageView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
extension AppUtils where Base:UIImageView{
    public func image(_ image:UIImage?)->AppUtils{
        self.base.image = image
        return self
    }
    
    public func highlightedImage(_ highlightedImage:UIImage?)->AppUtils{
        self.base.highlightedImage = highlightedImage
        return self
    }
    
    public func isHighlighted(_ isHighlighted:Bool)->AppUtils{
        self.base.isHighlighted = isHighlighted
        return self
    }
    
    public func animationImages(_ animationImages:[UIImage]?)->AppUtils{
        self.base.animationImages = animationImages
        return self
    }
    
    public func highlightedAnimationImages(_ highlightedAnimationImages:[UIImage]?)->AppUtils{
        self.base.highlightedAnimationImages = highlightedAnimationImages
        return self
    }
    
    public func animationDuration(_ animationDuration:TimeInterval)->AppUtils{
        self.base.animationDuration = animationDuration
        return self
    }
    
    public func animationRepeatCount(_ animationRepeatCount:Int)->AppUtils{
        self.base.animationRepeatCount = animationRepeatCount
        return self
    }
}
