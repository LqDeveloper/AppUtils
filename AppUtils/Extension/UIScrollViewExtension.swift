//
//  UITableVIewExtension.swift
//  AppUtils
//
//  Created by Quan Li on 2019/8/27.
//  Copyright © 2019 lq. All rights reserved.
//

#if canImport(UIKit)
import UIKit
#endif

public extension UIScrollView{
    @IBInspectable var offset: CGPoint{
        get{
            return contentOffset
        }
        set{
            contentOffset = newValue
        }
    }
    
    @IBInspectable var insetTop:CGFloat{
        get{
            return contentInset.top
        }
        set{
            contentInset.top = newValue
        }
    }
    
    @IBInspectable var insetBottom:CGFloat{
        get{
            return contentInset.bottom
        }
        set{
            contentInset.bottom = newValue
        }
    }
    
    @IBInspectable var insetLeft:CGFloat{
        get{
            return contentInset.left
        }
        set{
            contentInset.left = newValue
        }
    }
    
    @IBInspectable var insetRight:CGFloat{
        get{
            return contentInset.right
        }
        set{
            contentInset.right = newValue
        }
    }
}
