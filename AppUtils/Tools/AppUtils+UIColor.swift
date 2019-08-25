//
//  AppUtils+UIColor.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
extension UIColor:AppUtilsProtocol{}
public extension AppUtils where Base == UIColor{
    static func color(red255:Int,green255:Int,blue255:Int,alpha:CGFloat = 1.0) ->UIColor{
        return UIColor.init(red: CGFloat(red255)/255.0, green: CGFloat(green255)/255.0, blue: CGFloat(blue255)/255.0, alpha: alpha)
    }
    
    static func color(hex:Int,alpha:CGFloat = 1.0) ->UIColor{
        return self.color(red255: (hex & 0xFF0000) >> 16, green255: (hex & 0xFF00) >> 8, blue255: (hex & 0xFF), alpha: alpha)
    }
    
    static func color(rgb:UInt,alpha:CGFloat) ->UIColor{
        return UIColor.init(red: CGFloat((rgb & 0xFF0000) >> 16)/255.0, green: CGFloat((rgb & 0xFF00) >> 8)/255.0, blue: CGFloat((rgb & 0xFF))/255.0, alpha: alpha)
    }
    
    func rgb() -> (red:CGFloat,green:CGFloat,blue:CGFloat,alpha:CGFloat)?{
        var fRed:CGFloat = 0.0
        var fGreen:CGFloat = 0.0
        var fBlue:CGFloat = 0.0
        var fAlpha:CGFloat = 0.0
        
        if self.base.getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha) {
            return (red:fRed,green:fGreen,blue:fBlue,alpha:fAlpha)
        }else{
            return nil
        }
    }
}
