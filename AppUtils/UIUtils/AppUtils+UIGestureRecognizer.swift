//
//  AppUtils+UIGestureRecognizer.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/24.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit

extension UIGestureRecognizer:AppUtilsProtocol{}
public extension AppUtils where Base:UIGestureRecognizer{
    func addTarget(_ target: Any, action: Selector) -> AppUtils{
        self.base.addTarget(target, action: action)
        return self
    }
    
    func removeTarget(_ target: Any?, action: Selector?) -> AppUtils{
        self.base.removeTarget(self, action: action)
        return self
    }
    
    func delegate(_ delegate: UIGestureRecognizerDelegate?) -> AppUtils{
        self.base.delegate = delegate
        return self
    }
    
    func isEnabled(_ isEnabled: Bool) -> AppUtils{
        self.base.isEnabled = isEnabled
        return self
    }
    
    func cancelsTouchesInView(_ cancelsTouchesInView: Bool) -> AppUtils{
        self.base.cancelsTouchesInView = cancelsTouchesInView
        return self
    }
    
    func delaysTouchesBegan(_ delaysTouchesBegan: Bool) -> AppUtils{
        self.base.delaysTouchesBegan = delaysTouchesBegan
        return self
    }
    
    func delaysTouchesEnded(_ delaysTouchesEnded: Bool) -> AppUtils{
        self.base.delaysTouchesEnded = delaysTouchesEnded
        return self
    }
    
    func allowedTouchTypes(_ allowedTouchTypes: [NSNumber]) -> AppUtils{
        self.base.allowedTouchTypes = allowedTouchTypes
        return self
    }
    
    func allowedPressTypes(_ allowedPressTypes: [NSNumber]) -> AppUtils{
        self.base.allowedPressTypes = allowedPressTypes
        return self
    }
    
    func requiresExclusiveTouchType(_ requiresExclusiveTouchType: Bool) -> AppUtils{
        if #available(iOS 9.2, *) {
            self.base.requiresExclusiveTouchType = requiresExclusiveTouchType
        } else {}
        return self
    }
    
    func require(_ toFailOtherGestureRecognizer: UIGestureRecognizer) -> AppUtils{
        self.base.require(toFail: toFailOtherGestureRecognizer)
        return self
    }
    
    func name(_ name: String?) -> AppUtils {
        if #available(iOS 11.0, *) {
            self.base.name = name
        } else {}
        return self
    }
}
