//
//  AppSetting.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/20.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import Foundation
public struct AppSetting {
    public static func getString(key:String) -> String?{
        return UserDefaults.standard.string(forKey: key)
    }
    
    public static func setString(key:String,value:String){
        return UserDefaults.standard.set(value, forKey: key)
    }
    
    public static func getArray(key:String) -> [Any]?{
        return UserDefaults.standard.array(forKey: key)
    }
    
    public static func setArray(key:String,value:[Any]){
        return UserDefaults.standard.set(value, forKey: key)
    }
    
    public static func getDictionary(key:String) -> [String : Any]?{
        return UserDefaults.standard.dictionary(forKey: key)
    }
    
    public static func setDictionary(key:String,value:[String : Any]){
        return UserDefaults.standard.set(value, forKey: key)
    }
    
    public static func getData(key:String) -> Data?{
        return UserDefaults.standard.data(forKey: key)
    }
    
    public static func setData(key:String,value:Data){
        return UserDefaults.standard.set(value, forKey: key)
    }
    
    public static func getStringArray(key:String) -> [String]?{
        return UserDefaults.standard.stringArray(forKey: key)
    }
    
    public static func setStringArray(key:String,value:[String]){
        return UserDefaults.standard.set(value, forKey: key)
    }
    
    public static func getInt(key:String) -> Int {
        return UserDefaults.standard.integer(forKey: key)
    }
    
    public static func setInt(key:String,value:Int){
        UserDefaults.standard.set(value, forKey: key)
    }
    
    public static func getFloat(key:String) -> Float {
        return UserDefaults.standard.float(forKey: key)
    }
    
    public static func setFloat(key:String,value:Float){
        UserDefaults.standard.set(value, forKey: key)
    }
    
    public static func getDouble(key:String) -> Double {
        return UserDefaults.standard.double(forKey: key)
    }
    
    public static func setDouble(key:String,value:Double){
        UserDefaults.standard.set(value, forKey: key)
    }
    
    public static func getBool(key:String) -> Bool {
        return UserDefaults.standard.bool(forKey: key)
    }
    
    public static func setBool(key:String,value:Bool){
        UserDefaults.standard.set(value, forKey: key)
    }
    
    public static func getURL(key:String) -> URL? {
        return UserDefaults.standard.url(forKey: key)
    }
    
    public static func setURL(key:String,value:URL){
        UserDefaults.standard.set(value, forKey: key)
    }
}
