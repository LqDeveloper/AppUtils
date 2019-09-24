//
//  AppUtils+UISwipeGestureRecognizer.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/24.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit

public extension AppUtils where Base:UISwipeGestureRecognizer{
    func numberOfTouchesRequired(_ numberOfTouchesRequired: Int) -> AppUtils {
        self.base.numberOfTouchesRequired = numberOfTouchesRequired
        return self
    }
    
    func direction(_ direction: UISwipeGestureRecognizer.Direction) -> AppUtils {
        self.base.direction = direction
        return self
    }
}
