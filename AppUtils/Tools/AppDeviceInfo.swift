//
//  DeviceInfo.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit

public enum AppHardwareType:String{
    case unknown = "unknown"
    case simulator = "simulator"
    case iPhone_1G = "iPhone 1G"
    case iPhone_3G = "iPhone 3G"
    case iPhone_3GS = "iPhone 3GS"
    case iPhone_4 = "iPhone 4"
    case iPhone_4s = "iPhone 4s"
    case iPhone_5 = "iPhone 5"
    case iPhone_5C = "iPhone 5C"
    case iPhone_5S = "iPhone 5S"
    case iPhone_SE = "iPhone SE"
    case iPhone_6 = "iPhone 6"
    case iPhone_6P = "iPhone 6 Plus"
    case iPhone_6S = "iPhone 6S"
    case iPhone_6S_P = "iPhone 6S Plus"
    case iPhone_7 = "iPhone 7"
    case iPhone_7P = "iPhone 7 Plus"
    case iPhone_8 = "iPhone 8"
    case iPhone_8P = "iPhone 8 Plus"
    case iPhone_X = "iPhone X"
    case iPhone_XS = "iPhone XS"
    case iPhone_XS_Max = "iPhone XS Max"
    case iPhone_XR = "iPhone XR"
    
    case iPad_1 = "iPad 1"
    case iPad_2 = "iPad 2"
    case iPad_3 = "iPad 3"
    case iPad_4 = "iPad 4"
    case iPad_Air = "iPad Air"
    case iPad_Air_2 = "iPad Air 2"
    case iPad_Mini_1 = "iPad Mini 1"
    case iPad_Mini_2 = "iPad Mini 2"
    case iPad_Mini_3 = "iPad Mini 3"
    case iPad_Mini_4 = "iPad Mini 4"
    case iPad_Pro_9_7 = "iPad Pro 9.7"
    case iPad_Pro_12_9 = "iPad Pro 12.9"
}


public struct AppDeviceInfo{
    public static var isPhone: Bool{
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    
    public static var isPad:Bool{
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
    public static var isSimulator:Bool{
        return deviceType == .simulator
    }
    
    public static var isPhoneXSeries:Bool{
        guard #available(iOS 11.0, *) else{
            return false
        }
        return UIApplication.shared.windows[0].safeAreaInsets.bottom > 0
    }
    
    
    public static var screenWidth:CGFloat{
        return UIScreen.main.bounds.size.width
    }
    
   public static var screenHeight:CGFloat{
        return UIScreen.main.bounds.size.height
    }
    
    //   只支持竖屏
    public static var navigationHeight:CGFloat{
        if isPhoneXSeries{
            return 88.0
        }else{
            return 64.0
        }
    }
    
    public static var tabBarHeight:CGFloat{
        if isPhoneXSeries{
            return 83.0
        }else{
            return 49.0
        }
    }
    //   支持横竖屏
    public static func navigationHeight(navigationBar:UINavigationBar?)->CGFloat{
        guard let nav = navigationBar else {
            return statusBarHeight
        }
        return nav.frame.size.height + statusBarHeight
    }
    
    public  static func tabBarHeight(tabBar:UITabBar?,hasNav:Bool)->CGFloat{
        guard let tab = tabBar else {
            return bottomSpace
        }
        if hasNav{
            return tab.frame.size.height
        }
        return tab.frame.size.height + bottomSpace
    }
    
    public static var statusBarHeight:CGFloat{
        return UIApplication.shared.statusBarFrame.size.height
    }
    
    public static var bottomSpace:CGFloat{
        if #available(iOS 11.0, *) {
            return UIApplication.shared.windows[0].safeAreaInsets.bottom
        } else {
            return 0
        }
    }
    
    
    public  static var appName:String{
        let bundleDict = Bundle.main.infoDictionary!
        let appName = bundleDict["CFBundleDisplayName"] as! String
        return appName
    }
    
    
    public  static var appVersion:String{
        let bundleDict = Bundle.main.infoDictionary!
        let appName = bundleDict["CFBundleShortVersionString"] as! String
        return appName
    }
    
    
    public static var systemVersion:String{
        let currentDevice = UIDevice.current
        return currentDevice.systemVersion
    }
    
    public static var hardwareString:String{
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
    }
    
    public static var uuid:String{
        let uuidRef = CFUUIDCreate(nil)
        let uuidStringRef = CFUUIDCreateString(nil,uuidRef)
        return uuidStringRef as String? ?? ""
    }
    
    public static var countryCode:String{
        return (NSLocale.current as NSLocale).object(forKey: NSLocale.Key.countryCode) as! String
    }
    
    public static var appBundleId:String {
        return Bundle.main.bundleIdentifier!
    }
    
    public static var documentPath:String{
        return NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0]
    }
    
    public static var cachePath:String{
        return NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.cachesDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0]
    }
    
    public static var deviceType:AppHardwareType{
        let platform = hardwareString
        switch platform{
        case "i386","x86_64":
            return .simulator
        case "iPhone1,1":
            return .iPhone_1G
        case "iPhone1,2":
            return .iPhone_3G
        case "iPhone2,1":
            return .iPhone_3GS
        case "iPhone3,1","iPhone3,2":
            return .iPhone_4
        case "iPhone4,1":
            return .iPhone_4s
        case "iPhone5,1","iPhone5,2":
            return .iPhone_5
        case "iPhone5,3","iPhone5,4":
            return .iPhone_5C
        case "iPhone6,1","iPhone6,2":
            return .iPhone_5S
        case "iPhone7,1":
            return .iPhone_6P
        case "iPhone7,2":
            return .iPhone_6
        case "iPhone8,1":
            return .iPhone_6S
        case "iPhone8,2":
            return .iPhone_6S_P
        case "iPhone8,4":
            return .iPhone_SE
        case "iPhone9,1","iPhone9,3":
            return .iPhone_7
        case "iPhone9,2","iPhone9,4":
            return .iPhone_7P
        case "iPhone10,1","iPhone10,4":
            return .iPhone_8
        case "iPhone10,2","iPhone10,5":
            return .iPhone_8P
        case "iPhone10,3","iPhone10,6":
            return .iPhone_X
        case "iPhone11,2":
            return .iPhone_XS
        case "iPhone11,4","iPhone11,6":
            return .iPhone_XS_Max
        case "iPhone11,8":
            return .iPhone_XR
        case "iPad1,1":
            return .iPad_1
        case "iPad2,1","iPad2,2","iPad2,3","iPad2,4":
            return .iPad_2
        case "iPad3,1","iPad3,2","iPad3,3":
            return .iPad_3
        case "iPad3,4","iPad3,5","iPad3,6":
            return .iPad_4
        case "iPad4,1","iPad4,2","iPad4,3":
            return .iPad_Air
        case "iPad5,3","iPad5,4":
            return .iPad_Air_2
        case "iPad2,5","iPad2,6","iPad2,7":
            return .iPad_Mini_1
        case "iPad4,4","iPad4,5","iPad4,6":
            return .iPad_Mini_2
        case "iPad4,7","iPad4,8","iPad4,9":
            return .iPad_Mini_3
        case "iPad5,1","iPad5,2":
            return .iPad_Mini_4
        case "iPad6,3","iPad6,4":
            return .iPad_Pro_9_7
        case "iPad6,7","iPad6,8":
            return .iPad_Pro_12_9
        default:
            return .unknown
        }
    }
}
