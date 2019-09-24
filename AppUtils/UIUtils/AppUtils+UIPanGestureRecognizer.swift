//
//  AppUtils+UIPanGestureRecognizer.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/24.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

#if canImport(UIKit)
import UIKit
#endif

public extension AppUtils where Base:UIPanGestureRecognizer{
    func minimumNumberOfTouches(_ minimumNumberOfTouches: Int) -> AppUtils {
        self.base.minimumNumberOfTouches = minimumNumberOfTouches
        return self
    }
    
    func maximumNumberOfTouches(_ maximumNumberOfTouches: Int) -> AppUtils {
        self.base.maximumNumberOfTouches = maximumNumberOfTouches
        return self
    }
}
