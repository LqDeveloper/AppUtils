//
//  DebugLog.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import Foundation

public struct AppDebugLog {
    public static var isDebug:Bool{
        var debug = false
        #if DEBUG
        debug = true
        #endif
        return debug
    }
    
    public static func debugLog<T>(_ message:T,file : String = #file, funcName : String = #function, lineNum : Int = #line){
        if isDebug{
            let fileName = (file as NSString).lastPathComponent
            print("\(fileName):[\(funcName)](\(lineNum)) - \(message)")
        }
    }
}
