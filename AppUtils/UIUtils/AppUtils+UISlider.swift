//
//  AppUtils+UISlider.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/24.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit

public extension AppUtils where Base:UISlider{
    func value(_ value: Float) -> AppUtils {
        self.base.value = value
        return self
    }
    
    func minimumValue(_ minimumValue: Float) -> AppUtils {
        self.base.minimumValue = minimumValue
        return self
    }
    
    func maximumValue(_ maximumValue: Float) -> AppUtils {
        self.base.maximumValue = maximumValue
        return self
    }
    
    func minimumValueImage(_ minimumValueImage: UIImage?) -> AppUtils {
        self.base.minimumValueImage = minimumValueImage
        return self
    }
    
    func maximumValueImage(_ maximumValueImage: UIImage?) -> AppUtils {
        self.base.maximumValueImage = maximumValueImage
        return self
    }
    
    func isContinuous(_ isContinuous: Bool) -> AppUtils {
        self.base.isContinuous = isContinuous
        return self
    }
    
    func minimumTrackTintColor(_ minimumTrackTintColor: UIColor?) -> AppUtils {
        self.base.minimumTrackTintColor = minimumTrackTintColor
        return self
    }
    
    func maximumTrackTintColor(_ maximumTrackTintColor: UIColor?) -> AppUtils {
        self.base.maximumTrackTintColor = maximumTrackTintColor
        return self
    }
    
    func thumbTintColor(_ thumbTintColor: UIColor?) -> AppUtils {
        self.base.thumbTintColor = thumbTintColor
        return self
    }
}
