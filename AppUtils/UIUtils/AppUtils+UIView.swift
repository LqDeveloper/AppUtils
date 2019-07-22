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
    
    public func backgroundColor(_ backgroundColor:UIColor)->AppUtils{
        self.base.backgroundColor = backgroundColor
        return self
    }
    
    public func isUserInteractionEnabled(_ isUserInteractionEnabled:Bool)->AppUtils{
        self.base.isUserInteractionEnabled = isUserInteractionEnabled
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
