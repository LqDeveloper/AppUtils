//
//  AppUtils+UIViewController.swift
//  AppUtils
//
//  Created by Quan Li on 2019/8/20.
//  Copyright © 2019 lq. All rights reserved.
//

import UIKit

public extension UIViewController{
    var navigationHeight:CGFloat{
        return AppDeviceInfo.navigationHeight(navigationBar: navigationController?.navigationBar)
    }
    
    var tabBarHeight:CGFloat{
        guard let _ = navigationController else{
            return AppDeviceInfo.tabBarHeight(tabBar: tabBarController?.tabBar,hasNav: false)
        }
        return AppDeviceInfo.tabBarHeight(tabBar: tabBarController?.tabBar,hasNav: true)
    }
    
    func showAlertController(title:String?,message:String?,okTitle:String = "确定",okHandler:@escaping ((UIAlertAction)->())  ,cancleTitle:String = "取消",cancleHandler:@escaping(UIAlertAction)->(),completion: (()->Void)? = nil){
        let alertController = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction.init(title: okTitle, style: .default, handler: okHandler)
        let cancleAction = UIAlertAction.init(title: cancleTitle, style: .cancel, handler: cancleHandler)
        alertController.addAction(okAction)
        alertController.addAction(cancleAction)
        present(alertController, animated: true, completion: completion)
    }
    
    func showOkAlertController(title:String?,message:String?,okTitle:String = "确定",okHandler:@escaping (UIAlertAction)->(),completion: (()->Void)? = nil){
        let alertController = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction.init(title: okTitle, style: .default, handler: okHandler)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: completion)
    }
}
