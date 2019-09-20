//
//  AppSetting.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/20.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import Foundation
 public struct AppSetting {
    public static func getString(key:String) -> String{
        return UserDefaults.standard.value(forKey: key)  as? String ?? ""
    }
    
    public static func setString(key:String,value:String){
        return UserDefaults.standard.set(value, forKey: key)
    }
    
    public static func getBool(key:String) -> Bool {
        return UserDefaults.standard.bool(forKey: key)
    }
    
    public static func setBool(key:String,value:Bool){
        UserDefaults.standard.set(value, forKey: key)
    }
    
    public static func getInt(key:String) -> Int {
        return UserDefaults.standard.integer(forKey: key)
    }
    
    public static func setInt(key:String,value:Int){
        UserDefaults.standard.set(value, forKey: key)
    }
}
