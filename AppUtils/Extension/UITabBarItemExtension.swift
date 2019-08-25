//
//  UITabBarItemExtension.swift
//  AppUtils
//
//  Created by Quan Li on 2019/8/23.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit

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
