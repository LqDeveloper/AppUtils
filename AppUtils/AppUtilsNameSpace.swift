//
//  AppUtilsNameSpace.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/18.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import Foundation
import UIKit
public struct AppUtils<Base> {
    public let base:Base
    
    public init(_ base:Base){
        self.base = base
    }
    
    public func getBase()->Base{
        return self.base
    }
}


public protocol AppUtilsProtocol{
    associatedtype  ObType
    static var tool:AppUtils<ObType>.Type {get}
    var tool:AppUtils<ObType> {get}
}


extension AppUtilsProtocol{
    public static var tool:AppUtils<Self>.Type{
        return AppUtils<Self>.self
    }
    public var tool:AppUtils<Self>{
        return AppUtils<Self>.init(self)
    }
}




