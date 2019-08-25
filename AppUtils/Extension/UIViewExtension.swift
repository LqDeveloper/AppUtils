//
//  UIViewExtension.swift
//  AppUtils
//
//  Created by liquan on 2019/8/25.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import Foundation

public extension UIView{
    static var currentViewController:UIViewController? {
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
