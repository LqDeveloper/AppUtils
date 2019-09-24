//
//  UIProgressViewExtension.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/24.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

#if canImport(UIKit)
import UIKit
#endif

public extension AppUtils where Base:UIProgressView{
    func progressViewStyle(_ progressViewStyle: UIProgressView.Style) -> AppUtils {
        self.base.progressViewStyle = progressViewStyle
        return self
    }
    
    func progress(_ progress: Float) -> AppUtils {
        self.base.progress = progress
        return self
    }
    
    func progressTintColor(_ progressTintColor: UIColor?) -> AppUtils {
        self.base.progressTintColor = progressTintColor
        return self
    }
    
    func trackTintColor(_ trackTintColor: UIColor?) -> AppUtils {
        self.base.trackTintColor = trackTintColor
        return self
    }
    
    func progressImage(_ progressImage: UIImage?) -> AppUtils {
        self.base.progressImage = progressImage
        return self
    }
    
    func trackImage(_ trackImage: UIImage?) -> AppUtils {
        self.base.trackImage = trackImage
        return self
    }
    
    func observedProgress(_ observedProgress: Progress?) -> AppUtils {
        self.base.observedProgress = observedProgress
        return self
    }
}
