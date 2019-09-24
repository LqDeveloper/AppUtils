//
//  DeviceInfo.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 lq. All rights reserved.
//

#if canImport(UIKit)
import UIKit
#endif
public enum AppDeviceInfo{
    case unknown
    case simulator
    case iPhone_5
    case iPhone_5C
    case iPhone_5S
    case iPhone_SE
    case iPhone_6
    case iPhone_6P
    case iPhone_6S
    case iPhone_6S_P
    case iPhone_7
    case iPhone_7P
    case iPhone_8
    case iPhone_8P
    case iPhone_X
    case iPhone_XS
    case iPhone_XS_Max
    case iPhone_XR
    
    case iPad_1
    case iPad_2
    case iPad_3
    case iPad_4
    case iPad_Air
    case iPad_Air_2
    case iPad_Mini_1
    case iPad_Mini_2
    case iPad_Mini_3
    case iPad_Mini_4
    case iPad_Pro_9_7
    case iPad_Pro_12_9
    
    public var name:String{
        switch self {
        case .unknown:
            return "unknown"
        case .simulator:
            return "simulator"
        case .iPhone_5:
            return "iPhone 5"
        case .iPhone_5C:
            return "iPhone 5C"
        case .iPhone_5S:
            return "iPhone 5S"
        case .iPhone_SE:
            return "iPhone SE"
        case .iPhone_6:
            return "iPhone 6"
        case .iPhone_6P:
            return "iPhone 6 Plus"
        case .iPhone_6S:
            return "iPhone 6S"
        case .iPhone_6S_P:
            return "iPhone 6S Plus"
        case .iPhone_7:
            return "iPhone 7"
        case .iPhone_7P:
            return "iPhone 7 Plus"
        case .iPhone_8:
            return "iPhone 8"
        case .iPhone_8P:
            return "iPhone 8 Plus"
        case .iPhone_X:
            return "iPhone X"
        case .iPhone_XS:
            return "iPhone XS"
        case .iPhone_XS_Max:
            return "iPhone XS Max"
        case .iPhone_XR:
            return "iPhone XR"
        case .iPad_1:
            return "iPad 1"
        case .iPad_2:
            return "iPad 2"
        case .iPad_3:
            return "iPad 3"
        case .iPad_4:
            return "iPad 4"
        case .iPad_Air:
            return "iPad Air"
        case .iPad_Air_2:
            return "iPad Air 2"
        case .iPad_Mini_1:
            return "iPad Mini 1"
        case .iPad_Mini_2:
            return "iPad Mini 2"
        case .iPad_Mini_3:
            return "iPad Mini 3"
        case .iPad_Mini_4:
            return "iPad Mini 4"
        case .iPad_Pro_9_7:
            return "iPad Pro 9.7"
        case .iPad_Pro_12_9:
            return "iPad Pro 12.9"
        }
    }
    
    /// 设备类型
    public static var currentDevice:AppDeviceInfo{
        let platform = hardwareString
        switch platform{
        case "i386","x86_64":
            return .simulator
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
    
    
    public enum Orientation {
        case landscape
        case portrait
    }
    
    @available(iOS 8.0, watchOS 4.0, *)
    public enum BatteryState: CustomStringConvertible, Equatable {
        /// 电池满电
        case full
        /// 设备已接通电源，电池电量低于100％。
        /// The associated value is in percent (0-100).
        case charging(Int)
        ///设备未插入电源; 电池正在放电。
        ///关联值以百分比（0-100）表示。
        case unplugged(Int)
        
        public var description: String {
            switch self {
            case .charging(let batteryLevel): return "电池电量：\(batteryLevel)%，正在充电。"
            case .full: return "电池电量满格"
            case .unplugged(let batteryLevel): return "电池电量：\(batteryLevel)%，没在充电。"
            }
        }
        
        init() {
            let wasBatteryMonitoringEnabled = UIDevice.current.isBatteryMonitoringEnabled
            UIDevice.current.isBatteryMonitoringEnabled = true
            let batteryLevel = Int(round(UIDevice.current.batteryLevel * 100))
            switch UIDevice.current.batteryState {
            case .charging: self = .charging(batteryLevel)
            case .full: self = .full
            case .unplugged: self = .unplugged(batteryLevel)
            case .unknown: self = .full //自从“batteryMonitoring”启用后，永远不应该发生。
            @unknown default:
                self = .full
            }
            UIDevice.current.isBatteryMonitoringEnabled = wasBatteryMonitoringEnabled
        }
    }
}

@available(iOS 8.0, watchOS 4.0, *)
extension AppDeviceInfo.BatteryState: Comparable {
    public static func == (lhs: AppDeviceInfo.BatteryState, rhs: AppDeviceInfo.BatteryState) -> Bool {
        return lhs.description == rhs.description
    }
    
    public static func < (lhs: AppDeviceInfo.BatteryState, rhs: AppDeviceInfo.BatteryState) -> Bool {
        switch (lhs, rhs) {
        case (.full, _): return false // return false (even if both are `.Full` -> they are equal)
        case (_, .full): return true // lhs is *not* `.Full`, rhs is
        case let (.charging(lhsLevel), .charging(rhsLevel)): return lhsLevel < rhsLevel
        case let (.charging(lhsLevel), .unplugged(rhsLevel)): return lhsLevel < rhsLevel
        case let (.unplugged(lhsLevel), .charging(rhsLevel)): return lhsLevel < rhsLevel
        case let (.unplugged(lhsLevel), .unplugged(rhsLevel)): return lhsLevel < rhsLevel
        default: return false // compiler won't compile without it, though it cannot happen
        }
    }
}

public extension AppDeviceInfo{
    /// 是否是低电量模式
    static var lowPowerMode: Bool {
        if #available(iOS 9.0, *) {
            return ProcessInfo.processInfo.isLowPowerModeEnabled
        } else {
            return false
        }
    }
    
    /// 电池状态
    static var batteryState: BatteryState {
        return BatteryState()
    }
    
    /// 电量值
    static var batteryLevel: Int? {
        switch BatteryState() {
        case .charging(let value): return value
        case .full: return 100
        case .unplugged(let value): return value
        }
    }
}



public extension AppDeviceInfo{
    /// 是否是手机
    static var isPhone: Bool{
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    
    /// 是否是iPad
    static var isPad:Bool{
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
    /// 是否是模拟器
    static var isSimulator:Bool{
        return currentDevice == .simulator
    }
    
    /// 是否是iPhone X系列
    static var isPhoneXSeries:Bool{
        guard #available(iOS 11.0, *) else{
            return false
        }
        return UIApplication.shared.windows[0].safeAreaInsets.bottom > 0
    }
}

public extension AppDeviceInfo{
    /// 屏宽
    static var screenWidth:CGFloat{
        return UIScreen.main.bounds.size.width
    }
    
    /// 屏高
    static var screenHeight:CGFloat{
        return UIScreen.main.bounds.size.height
    }
    
    /// 屏幕方向
    static  var orientation: Orientation {
        if UIDevice.current.orientation.isLandscape {
            return .landscape
        } else {
            return .portrait
        }
    }
    
    //   只支持竖屏 导航高度
    static var navigationHeight:CGFloat{
        if isPhoneXSeries{
            return 88.0
        }else{
            return 64.0
        }
    }
    
    /// tabBar高度
    static var tabBarHeight:CGFloat{
        if isPhoneXSeries{
            return 83.0
        }else{
            return 49.0
        }
    }
    //   支持横竖屏 导航高度
    static func navigationHeight(navigationBar:UINavigationBar?)->CGFloat{
        guard let nav = navigationBar else {
            return statusBarHeight
        }
        return nav.frame.size.height + statusBarHeight
    }
    
    /// tabBar高度
    ///
    /// - Parameters:
    ///   - tabBar: tabBar
    ///   - hasNav: 是否有导航
    /// - Returns: tabBar高度
    static func tabBarHeight(tabBar:UITabBar?,hasNav:Bool)->CGFloat{
        guard let tab = tabBar else {
            return bottomSpace
        }
        if hasNav{
            return tab.frame.size.height
        }
        return tab.frame.size.height + bottomSpace
    }
    
    
    /// 状态栏高度
    static var statusBarHeight:CGFloat{
        return UIApplication.shared.statusBarFrame.size.height
    }
    
    /// 安全区域底部的高度
    static var bottomSpace:CGFloat{
        if #available(iOS 11.0, *) {
            return UIApplication.shared.windows[0].safeAreaInsets.bottom
        } else {
            return 0
        }
    }
}

public extension AppDeviceInfo{
    /// 应用的名字
    static var appName:String{
        let bundleDict = Bundle.main.infoDictionary!
        let appName = bundleDict["CFBundleDisplayName"] as! String
        return appName
    }
    
    /// 设备的名字（如 "Dennis' iPhone"
    static var name:String{
        return UIDevice.current.name
    }
    
    ///设备机型名字（如 "iPhone" , "iPod Touch"）
    static var model: String{
        return UIDevice.current.model
    }
    
    ///本地化设备机型名字
    static var localizedModel: String? {
        return UIDevice.current.localizedModel
    }
    
    /// 屏幕亮度
    static var screenBrightness: CGFloat {
        return UIScreen.main.brightness
    }
    
    /// 修改屏幕亮度
    ///
    /// - Parameter brightness: 屏幕亮度
    static func changeScreenBrightness(brightness:CGFloat){
        UIScreen.main.brightness = brightness
    }
    
    /// 应用版本
    static var appVersion:String{
        let bundleDict = Bundle.main.infoDictionary!
        let appName = bundleDict["CFBundleShortVersionString"] as! String
        return appName
    }
    
    ///手机系统名称（如iOS ，TVOS）
    static var systemName: String? {
        return UIDevice.current.systemName
    }
    
    /// 手机系统版本（如10.0 ，11.0）
    static var systemVersion:String{
        let currentDevice = UIDevice.current
        return currentDevice.systemVersion
    }
    
    /// 设备型号
    static var hardwareString:String{
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        return identifier
    }
    
    /// 设备UUID
    static var uuid:String{
        let uuidRef = CFUUIDCreate(nil)
        let uuidStringRef = CFUUIDCreateString(nil,uuidRef)
        return uuidStringRef as String? ?? ""
    }
    
    /// 国家编码
    static var countryCode:String{
        return (NSLocale.current as NSLocale).object(forKey: NSLocale.Key.countryCode) as! String
    }
    
    /// 应用 BundleId
    static var appBundleId:String {
        return Bundle.main.bundleIdentifier!
    }
}


public extension AppDeviceInfo{
    /// document文件夹 路径
    static var documentPath:String{
        return NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0]
    }
    /// cache文件夹 路径
    static var cachePath:String{
        return NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.cachesDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)[0]
    }
    
    /// 沙盒路径
    static let rootURL = URL(fileURLWithPath: NSHomeDirectory())
    
    /// 总容量
    static var volumeTotalCapacity: Int? {
        return (try? rootURL.resourceValues(forKeys: [.volumeTotalCapacityKey]))?.volumeTotalCapacity
    }
    
    /// 可用容量
    static var volumeAvailableCapacity: Int? {
        return (try? rootURL.resourceValues(forKeys: [.volumeAvailableCapacityKey]))?.volumeAvailableCapacity
    }
    
    ///可用容量（以字节为单位），用于存储重要资源。
    @available(iOS 11.0, *)
    static var volumeAvailableCapacityForImportantUsage: Int64? {
        return (try? rootURL.resourceValues(forKeys: [.volumeAvailableCapacityForImportantUsageKey]))?.volumeAvailableCapacityForImportantUsage
    }
    
    ///用于存储非必要资源的卷的可用容量（以字节为单位）。
    @available(iOS 11.0, *)
    static var volumeAvailableCapacityForOpportunisticUsage: Int64? { //swiftlint:disable:this identifier_name
        return (try? rootURL.resourceValues(forKeys: [.volumeAvailableCapacityForOpportunisticUsageKey]))?.volumeAvailableCapacityForOpportunisticUsage
    }
    
    ///所有卷容量信息，以字节为单位。
    @available(iOS 11.0, *)
    static var volumes: [URLResourceKey: Int64]? {
        do {
            let values = try rootURL.resourceValues(forKeys: [.volumeAvailableCapacityForImportantUsageKey,
                                                              .volumeAvailableCapacityKey,
                                                              .volumeAvailableCapacityForOpportunisticUsageKey,
                                                              .volumeTotalCapacityKey])
            return values.allValues.mapValues {
                if let int = $0 as? Int64 {
                    return int
                }
                if let int = $0 as? Int {
                    return Int64(int)
                }
                return 0
            }
        } catch {
            return nil
        }
    }
}
