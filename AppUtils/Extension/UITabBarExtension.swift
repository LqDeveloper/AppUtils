//
//  UITabBarControllerExtension.swift
//  AppUtils
//
//  Created by Quan Li on 2019/8/23.
//  Copyright © 2019 lq. All rights reserved.
//

#if canImport(UIKit)
import UIKit
#endif

public extension UITabBar{
    @IBInspectable var selectColor:UIColor?{
        get{
            guard let item = items?.first else {
                return nil
            }
            guard let attri = item.titleTextAttributes(for: .selected) else {
                return nil
            }
            guard let color = attri[NSAttributedString.Key.foregroundColor] as? UIColor else {
                return nil
            }
            return color
        }
        set{
            guard let tabBarItems = items else {
                return
            }
            for (_,tabBarItem) in tabBarItems.enumerated(){
                
                var attri = tabBarItem.titleTextAttributes(for: .selected)
                if attri == nil{
                    attri = [NSAttributedString.Key : Any]()
                }
                
                attri?[NSAttributedString.Key.foregroundColor] = newValue
                tabBarItem.setTitleTextAttributes(attri, for: .selected)
            }
        }
    }
    
    
    @IBInspectable var normalColor:UIColor?{
        get{
            guard let item = items?.first else {
                return nil
            }
            guard let attri = item.titleTextAttributes(for: .normal) else {
                return nil
            }
            guard let color = attri[NSAttributedString.Key.foregroundColor] as? UIColor else {
                return nil
            }
            return color
        }
        set{
            guard let tabBarItems = items else {
                return
            }
            for (_,tabBarItem) in tabBarItems.enumerated(){
                
                var attri = tabBarItem.titleTextAttributes(for: .normal)
                if attri == nil{
                    attri = [NSAttributedString.Key : Any]()
                }
                
                attri?[NSAttributedString.Key.foregroundColor] = newValue
                tabBarItem.setTitleTextAttributes(attri, for: .normal)
            }
        }
    }
    
    @IBInspectable  var horizontal:CGFloat{
        get{
            guard let item = items?.first else {
                return 0
            }
            return item.titlePositionAdjustment.horizontal
        }
        set{
            guard let tabBarItems = items else {
                return
            }
            for (_,tabBarItem) in tabBarItems.enumerated(){
                tabBarItem.titlePositionAdjustment.horizontal = newValue
            }
            
        }
    }
    
    @IBInspectable  var vertical:CGFloat{
        get{
            guard let item = items?.first else {
                return 0
            }
            return item.titlePositionAdjustment.vertical
        }
        set{
            guard let tabBarItems = items else {
                return
            }
            for (_,tabBarItem) in tabBarItems.enumerated(){
                tabBarItem.titlePositionAdjustment.vertical = newValue
            }
            
        }
    }
}
