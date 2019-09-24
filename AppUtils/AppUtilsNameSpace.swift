//
//  AppUtilsNameSpace.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/18.
//  Copyright © 2019 lq. All rights reserved.
//

import Foundation

#if canImport(UIKit)
import UIKit
#endif

public struct AppUtils<Base> {
    public let base:Base
    
    public init(_ base:Base){
        self.base = base
    }
    
    public func build()->Base{
        return self.base
    }
}


public protocol AppUtilsProtocol{
    associatedtype  ObType
    static var builder:AppUtils<ObType>.Type {get}
    var builder:AppUtils<ObType> {get}
}


extension AppUtilsProtocol{
    public static var builder:AppUtils<Self>.Type{
        return AppUtils<Self>.self
    }
    public var builder:AppUtils<Self>{
        return AppUtils<Self>.init(self)
    }
}




