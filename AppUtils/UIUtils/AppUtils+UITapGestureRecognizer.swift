//
//  AppUtils+UITapGestureRecognizer.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/24.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

#if canImport(UIKit)
import UIKit
#endif

public extension AppUtils where Base:UITapGestureRecognizer{
    func numberOfTapsRequired(_ numberOfTapsRequired: Int) -> AppUtils {
        self.base.numberOfTapsRequired = numberOfTapsRequired
        return self
    }
    
    func numberOfTouchesRequired(_ numberOfTouchesRequired: Int) -> AppUtils {
        self.base.numberOfTouchesRequired = numberOfTouchesRequired
        return self
    }
}
