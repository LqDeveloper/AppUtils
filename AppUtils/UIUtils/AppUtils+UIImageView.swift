//
//  AppUtils+UIImageView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 lq. All rights reserved.
//

import UIKit
public extension AppUtils where Base:UIImageView{
    func image(_ image:UIImage?) -> AppUtils{
        self.base.image = image
        return self
    }
    
    func highlightedImage(_ highlightedImage:UIImage?) -> AppUtils{
        self.base.highlightedImage = highlightedImage
        return self
    }
    
    func isHighlighted(_ isHighlighted:Bool) -> AppUtils{
        self.base.isHighlighted = isHighlighted
        return self
    }
    
    func animationImages(_ animationImages:[UIImage]?) -> AppUtils{
        self.base.animationImages = animationImages
        return self
    }
    
    func highlightedAnimationImages(_ highlightedAnimationImages:[UIImage]?) -> AppUtils{
        self.base.highlightedAnimationImages = highlightedAnimationImages
        return self
    }
    
    func animationDuration(_ animationDuration:TimeInterval) -> AppUtils{
        self.base.animationDuration = animationDuration
        return self
    }
    
    func animationRepeatCount(_ animationRepeatCount:Int) -> AppUtils{
        self.base.animationRepeatCount = animationRepeatCount
        return self
    }
}
