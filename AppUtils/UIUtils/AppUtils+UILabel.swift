//
//  AppUtils+UILabel.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/18.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
extension AppUtils where Base:UILabel{
    public func text(_ text:String?)->AppUtils{
        self.base.text = text
        return self
    }
    
    public func attributedText(_ attributedText:NSAttributedString?)->AppUtils{
        self.base.attributedText = attributedText
        return self
    }
    
    public func font(_ font:UIFont?)->AppUtils{
        self.base.font = font
        return self
    }
    
    public func textColor(_ textColor:UIColor?)->AppUtils{
        self.base.textColor = textColor
        return self
    }
    
    public func shadowColor(_ shadowColor:UIColor?)->AppUtils{
        self.base.shadowColor = shadowColor
        return self
    }
    
    public func shadowOffset(_ shadowOffset:CGSize)->AppUtils{
        self.base.shadowOffset = shadowOffset
        return self
    }
    
    public func textAlignment(_ textAlignment:NSTextAlignment)->AppUtils{
        self.base.textAlignment = textAlignment
        return self
    }
    
    public func lineBreakMode(_ lineBreakMode:NSLineBreakMode)-> AppUtils{
        self.base.lineBreakMode = lineBreakMode
        return self
    }
    
    public func highlightedTextColor(_ highlightedTextColor:UIColor?)->AppUtils{
        self.base.highlightedTextColor = highlightedTextColor
        return self
    }
    
    public func isEnabled(_ isEnabled:Bool)->AppUtils{
        self.base.isEnabled = isEnabled
        return self
    }
    
    public func numberOfLines(_ numberOfLines:Int)->AppUtils{
        self.base.numberOfLines = numberOfLines
        return self
    }
    
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth:Bool) -> AppUtils {
        self.base.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    func baselineAdjustment(_ baselineAdjustment:UIBaselineAdjustment) -> AppUtils {
        self.base.baselineAdjustment = baselineAdjustment
        return self
    }
    
    func minimumScaleFactor(_ minimumScaleFactor:CGFloat) -> AppUtils {
        self.base.minimumScaleFactor = minimumScaleFactor
        return self
    }
    
    func allowsDefaultTighteningForTruncation(_ allowsDefaultTighteningForTruncation:Bool) -> AppUtils {
        self.base.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation
        return self
    }
    
    func preferredMaxLayoutWidth(_ preferredMaxLayoutWidth:CGFloat) -> AppUtils {
        self.base.preferredMaxLayoutWidth = preferredMaxLayoutWidth
        return self
    }
}
