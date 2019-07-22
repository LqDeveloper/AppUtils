//
//  DeviceInfo.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
public struct AppDeviceInfo{
    public static var isPhone: Bool{
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    
    public static var isPad:Bool{
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
    public static var isPhoneXSeries:Bool{
        if #available(iOS 11.0, *){
            guard let window =  UIApplication.shared.keyWindow else{
                return false
            }
            return window.safeAreaInsets.bottom > 0.0
        }
        return false
    }
    
    
    public static var screenWidth:CGFloat{
        return UIScreen.main.bounds.size.width
    }
    
    public static var screenHeight:CGFloat{
        return UIScreen.main.bounds.size.height
    }
    
    public static var navigationHeight:CGFloat{
        if isPhoneXSeries{
            return 88.0
        }else{
            return 64.0
        }
    }
    
    public static var statusBarHeight:CGFloat{
        return UIApplication.shared.statusBarFrame.size.height
    }
    
    public static var bottomSpace:CGFloat{
        if #available(iOS 11.0, *){
            guard let window =  UIApplication.shared.keyWindow else{
                return 0
            }
            return window.safeAreaInsets.bottom
        }
        return 0
    }
    
    public  static var contentHeight:CGFloat{
        return screenHeight - navigationHeight - bottomSpace
    }
    
    
    public static var appName:String{
        let bundleDict = Bundle.main.infoDictionary!
        let appName = bundleDict["CFBundleDisplayName"] as! String
        return appName
    }
    
    
    public static var appVersion:String{
        let bundleDict = Bundle.main.infoDictionary!
        let appName = bundleDict["CFBundleShortVersionString"] as! String
        return appName
    }
    
    
    public static var systemVersion:String{
        let currentDevice = UIDevice.current
        return currentDevice.systemVersion
    }
    
    public  static var hardwareString:String{
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
    }
    
    
    public  static var appBundleId:String {
        return Bundle.main.bundleIdentifier!
    }
    
    public static var documentPath:String{
        return NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0]
    }
    
    public static var cachePath:String{
        return NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.cachesDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0]
    }
}
