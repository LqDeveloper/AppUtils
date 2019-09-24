//
//  AppUtils+UIRotationGestureRecognizer.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/24.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

#if canImport(UIKit)
import UIKit
#endif

public extension AppUtils where Base:UIRotationGestureRecognizer{
    func rotation(_ rotation: CGFloat) -> AppUtils {
        self.base.rotation = rotation
        return self
    }
}
