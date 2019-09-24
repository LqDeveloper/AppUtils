//
//  AppUtils+UILongPressGestureRecognizer.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/24.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

#if canImport(UIKit)
import UIKit
#endif

public extension AppUtils where Base:UILongPressGestureRecognizer{
    func numberOfTapsRequired(_ numberOfTapsRequired: Int) -> AppUtils {
        self.base.numberOfTapsRequired = numberOfTapsRequired
        return self
    }
    
    func numberOfTouchesRequired(_ numberOfTouchesRequired: Int) -> AppUtils {
        self.base.numberOfTouchesRequired = numberOfTouchesRequired
        return self
    }
    
    func minimumPressDuration(_ minimumPressDuration: TimeInterval) -> AppUtils {
        self.base.minimumPressDuration = minimumPressDuration
        return self
    }
    
    func allowableMovement(_ allowableMovement: CGFloat) -> AppUtils {
        self.base.allowableMovement = allowableMovement
        return self
    }
}
