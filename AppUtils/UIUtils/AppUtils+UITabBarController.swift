//
//  AppUtils+UITabBarController.swift
//  AppUtils
//
//  Created by Quan Li on 2019/8/20.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
extension AppUtils where Base:UITabBarController{
    public func addViewControllers(viewControllers:[UIViewController],titles:[String],normalImages:[UIImage?],normalAttribute:[NSAttributedString.Key : Any]? = nil,selectImages:[UIImage?],selectAttribute:[NSAttributedString.Key : Any]? = nil,titlePosition:UIOffset? = nil)->Base{
        self.base.viewControllers = viewControllers
        guard let tabBarItems = self.base.tabBar.items else {
            return self.base
        }
        for (index,tabBarItem) in tabBarItems.enumerated(){
            tabBarItem.image = normalImages[index]
            tabBarItem.selectedImage = selectImages[index]
            tabBarItem.title = titles[index]
            tabBarItem.setTitleTextAttributes(normalAttribute, for: .normal)
            tabBarItem.setTitleTextAttributes(selectAttribute, for: .selected)
            if let tp = titlePosition{
                tabBarItem.titlePositionAdjustment = tp
            }
        }
        return self.base
    }
    
    public func badgeValue(badgeValue:String?,atIndex:Int){
        guard let tabBarItems = self.base.tabBar.items else {
            return
        }
        guard  atIndex >= tabBarItems.count else {
            return
        }
        let tabBarItem = tabBarItems[atIndex]
        tabBarItem.badgeValue = badgeValue
    }
    
    
    public  func badgeColor(badgeColor:UIColor?,atIndex:Int = -1){
        if #available(iOS 10.0, *){
            guard let color = badgeColor else {
                return
            }
            guard let tabBarItems = self.base.tabBar.items else {
                return
            }
            if atIndex == -1{
                tabBarItems.forEach { (item) in
                    item.badgeColor = color
                }
            }else{
                let tabBarItem = tabBarItems[atIndex]
                tabBarItem.badgeColor = color
            }
            
        }
    }
    
    public  func titlePositionAdjustment(titlePositionAdjustment: UIOffset?){
        guard let tp = titlePositionAdjustment else {
            return
        }
        guard let tabBarItems = self.base.tabBar.items else {
            return
        }
        tabBarItems.forEach { (item) in
            item.titlePositionAdjustment = tp
        }
    }
    
    public func setBadgeTextAttributes(_ textAttributes: [NSAttributedString.Key : Any]?, for state: UIControl.State ,atIndex:Int){
        if #available(iOS 10.0, *){
            guard let tabBarItems = self.base.tabBar.items else {
                return
            }
            guard  atIndex >= tabBarItems.count else {
                return
            }
            let tabBarItem = tabBarItems[atIndex]
            tabBarItem.setBadgeTextAttributes(textAttributes, for: state)
        }
    }
}

