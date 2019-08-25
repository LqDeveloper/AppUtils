//
//  UIViewExtension.swift
//  AppUtils
//
//  Created by liquan on 2019/8/25.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import Foundation

public extension UIView{
    @IBInspectable var borderColor: UIColor? {
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
        set {
            guard let color = newValue else {
                layer.borderColor = nil
                return
            }
            
            guard String(describing: type(of: color)) != "__NSCFType" else { return }
            layer.borderColor = color.cgColor
        }
    }
    
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.masksToBounds = true
            layer.cornerRadius = abs(CGFloat(Int(newValue * 100)) / 100)
        }
    }
    
    @IBInspectable var shadowColor: UIColor? {
        get {
            guard let color = layer.shadowColor else { return nil }
            return UIColor(cgColor: color)
        }
        set {
            layer.shadowColor = newValue?.cgColor
        }
    }
    
    
    @IBInspectable var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    
    @IBInspectable var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    
    @IBInspectable var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    
    
    var screenshot: UIImage? {
        UIGraphicsBeginImageContextWithOptions(layer.frame.size, false, 0)
        defer {
            UIGraphicsEndImageContext()
        }
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        layer.render(in: context)
        return UIGraphicsGetImageFromCurrentImageContext()
    }
    
    
    var origin_x:CGFloat{
        get{
            return frame.origin.x
        }
        set{
            frame.origin.x = newValue
        }
    }
    
    var origin_y:CGFloat{
        get{
            return frame.origin.y
        }
        set{
            frame.origin.y = newValue
        }
    }
    
    var size_width:CGFloat{
        set{
            frame.size.width = newValue
        }
        get{
            return frame.size.width
        }
    }
    
    var size_height:CGFloat{
        set{
            frame.size.height = newValue
        }
        get{
            return frame.size.height
        }
    }
    
    var parentVC: UIViewController? {
        weak var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if let viewController = parentResponder as? UIViewController {
                return viewController
            }
        }
        return nil
    }
    
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
