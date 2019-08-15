//
//  AppUtils+UIView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
extension UIView:AppUtilsProtocol{}
extension AppUtils where Base:UIView{
    public func frame(_ frame:CGRect)->AppUtils{
        self.base.frame = frame
        return self
    }
    
    public func addSubview(_ view: UIView)->AppUtils{
        self.base.addSubview(view)
        return self
    }
    
    public func backgroundColor(_ backgroundColor:UIColor)->AppUtils{
        self.base.backgroundColor = backgroundColor
        return self
    }
    
    public func isUserInteractionEnabled(_ isUserInteractionEnabled:Bool)->AppUtils{
        self.base.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    public func semanticContentAttribute(_ semanticContentAttribute: UISemanticContentAttribute)->AppUtils{
        self.base.semanticContentAttribute = semanticContentAttribute
        return self
    }
    
    
    public func center(_ center:CGPoint)->AppUtils{
        self.base.center = center
        return self
    }
    
    public func transform(_ transform:CGAffineTransform)->AppUtils{
        self.base.transform = transform
        return self
    }
    
    
    public func contentScaleFactor(_ contentScaleFactor:CGFloat)->AppUtils{
        self.base.contentScaleFactor = contentScaleFactor
        return self
    }
    
    
    public func isMultipleTouchEnabled(_ isMultipleTouchEnabled:Bool)->AppUtils{
        self.base.isMultipleTouchEnabled = isMultipleTouchEnabled
        return self
    }
    
    public func isExclusiveTouch(_ isExclusiveTouch:Bool)->AppUtils{
        self.base.isExclusiveTouch = isExclusiveTouch
        return self
    }
    
    public func autoresizesSubviews(_ autoresizesSubviews:Bool)->AppUtils{
        self.base.autoresizesSubviews = autoresizesSubviews
        return self
    }
    
    public func autoresizingMask(_ autoresizingMask:UIView.AutoresizingMask)->AppUtils{
        self.base.autoresizingMask = autoresizingMask
        return self
    }
    
    public func clipsToBounds(_ clipsToBounds:Bool)->AppUtils{
        self.base.clipsToBounds = clipsToBounds
        return self
    }
    
    public func alpha(_ alpha:CGFloat)->AppUtils{
        self.base.alpha = alpha
        return self
    }
    
    public func isOpaque(_ isOpaque:Bool)->AppUtils{
        self.base.isOpaque = isOpaque
        return self
    }
    
    public func clearsContextBeforeDrawing(_ clearsContextBeforeDrawing:Bool)->AppUtils{
        self.base.clearsContextBeforeDrawing = clearsContextBeforeDrawing
        return self
    }
    
    public func isHidden(_ isHidden:Bool)->AppUtils{
        self.base.isHidden = isHidden
        return self
    }
    
    public func contentMode(_ contentMode:UIView.ContentMode)->AppUtils{
        self.base.contentMode = contentMode
        return self
    }
    
    public func mask(_ mask:UIView?)->AppUtils{
        self.base.mask = mask
        return self
    }
    
    public func tintColor(_ tintColor:UIColor?)->AppUtils{
        self.base.tintColor = tintColor
        return self
    }
    
    public func tintAdjustmentMode(_ tintAdjustmentMode:UIView.TintAdjustmentMode)->AppUtils{
        self.base.tintAdjustmentMode = tintAdjustmentMode
        return self
    }
    
    
    public func motionEffects(_ motionEffects:[UIMotionEffect])->AppUtils{
        self.base.motionEffects = motionEffects
        return self
    }
    
    public func borderColor(_ borderColor:UIColor?) -> AppUtils {
        self.base.layer.borderColor = borderColor?.cgColor
        return self
    }
    
    public func borderWidth(_ borderWidth:CGFloat) -> AppUtils {
        self.base.layer.borderWidth = borderWidth
        return self
    }
    
    public func cornerRadius(_ cornerRadius:CGFloat) -> AppUtils {
        self.base.layer.cornerRadius = cornerRadius
        return self
    }
    
    public func masksToBounds(_ masksToBounds:Bool) -> AppUtils {
        self.base.layer.masksToBounds = masksToBounds
        return self
    }
    
    public func tag(_ tag:Int) -> AppUtils {
        self.base.tag = tag
        return self
    }
    
    
    public func finished(){}
    
    public var origin_x:CGFloat{
        get{
            return self.base.frame.origin.x
        }
        set{
            self.base.frame.origin.x = newValue
        }
    }
    
    public var origin_y:CGFloat{
        get{
            return self.base.frame.origin.y
        }
        set{
            self.base.frame.origin.y = newValue
        }
    }
    
    public var size_width:CGFloat{
        set{
            self.base.frame.size.width = newValue
        }
        get{
            return self.base.frame.size.width
        }
    }
    
    public var size_height:CGFloat{
        set{
            self.base.frame.size.height = newValue
        }
        get{
            return self.base.frame.size.height
        }
    }
    
    public var attachedViewController:UIViewController?{
        var responder = self.base.next
        while responder != nil {
            if responder is UIViewController {
                return responder as? UIViewController
            }
            responder = responder?.next
        }
        return nil
    }
    
    
    public static var currentViewController:UIViewController? {
        let rootVC = UIApplication.shared.keyWindow?.rootViewController
        return getCurrentVC(rootVC: rootVC)
    }
    
    private static func getCurrentVC(rootVC:UIViewController?)->UIViewController?{
        guard let root = rootVC else {
            return nil
        }
        if let presentVC = root.presentedViewController{
            return presentVC
        }else if root.isKind(of: UITabBarController.self){
            let tabBar = rootVC as! UITabBarController
            return getCurrentVC(rootVC: tabBar.selectedViewController)
        }else if root.isKind(of: UINavigationController.self){
            let nav = rootVC as! UINavigationController
            return getCurrentVC(rootVC: nav.topViewController)
        }else{
            return root
        }
    }
    
}
