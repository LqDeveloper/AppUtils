//
//  AppUtils+UIPinchGestureRecognizer.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/24.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

#if canImport(UIKit)
import UIKit
#endif

public extension AppUtils where Base:UIPinchGestureRecognizer{
    func scale(_ scale: CGFloat) -> AppUtils {
        self.base.scale = scale
        return self
    }
}
