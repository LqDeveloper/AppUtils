//
//  UITabBarItemExtension.swift
//  AppUtils
//
//  Created by Quan Li on 2019/8/23.
//  Copyright © 2019 lq. All rights reserved.
//

#if canImport(UIKit)
import UIKit
#endif

public extension UITabBarItem{
    @IBInspectable  var normalimage: UIImage?{
        get{
            return self.image
        }
        set{
            self.image =  newValue?.withRenderingMode(.alwaysOriginal)
        }
    }
    
    @IBInspectable  var selectImage: UIImage?{
        get{
            return self.selectedImage
        }
        set{
            self.selectedImage =  newValue?.withRenderingMode(.alwaysOriginal)
        }
    }
}
