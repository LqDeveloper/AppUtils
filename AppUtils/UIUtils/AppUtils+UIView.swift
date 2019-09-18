//
//  AppUtils+UIView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 lq. All rights reserved.
//

import UIKit
extension UIView:AppUtilsProtocol{}
public extension AppUtils where Base:UIView{
    func frame(_ frame:CGRect) -> AppUtils{
        self.base.frame = frame
        return self
    }
    
    func addSubview(_ view: UIView) -> AppUtils{
        self.base.addSubview(view)
        return self
    }
    
    func backgroundColor(_ backgroundColor:UIColor) -> AppUtils{
        self.base.backgroundColor = backgroundColor
        return self
    }
    
    func isUserInteractionEnabled(_ isUserInteractionEnabled:Bool) -> AppUtils{
        self.base.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    func semanticContentAttribute(_ semanticContentAttribute: UISemanticContentAttribute) -> AppUtils{
        self.base.semanticContentAttribute = semanticContentAttribute
        return self
    }
    
    
    func center(_ center:CGPoint) -> AppUtils{
        self.base.center = center
        return self
    }
    
    func transform(_ transform:CGAffineTransform) -> AppUtils{
        self.base.transform = transform
        return self
    }
    
    
    func contentScaleFactor(_ contentScaleFactor:CGFloat) -> AppUtils{
        self.base.contentScaleFactor = contentScaleFactor
        return self
    }
    
    
    func isMultipleTouchEnabled(_ isMultipleTouchEnabled:Bool) -> AppUtils{
        self.base.isMultipleTouchEnabled = isMultipleTouchEnabled
        return self
    }
    
    func isExclusiveTouch(_ isExclusiveTouch:Bool) -> AppUtils{
        self.base.isExclusiveTouch = isExclusiveTouch
        return self
    }
    
    func autoresizesSubviews(_ autoresizesSubviews:Bool) -> AppUtils{
        self.base.autoresizesSubviews = autoresizesSubviews
        return self
    }
    
    func autoresizingMask(_ autoresizingMask:UIView.AutoresizingMask) -> AppUtils{
        self.base.autoresizingMask = autoresizingMask
        return self
    }
    
    func clipsToBounds(_ clipsToBounds:Bool) -> AppUtils{
        self.base.clipsToBounds = clipsToBounds
        return self
    }
    
    func alpha(_ alpha:CGFloat) -> AppUtils{
        self.base.alpha = alpha
        return self
    }
    
    func isOpaque(_ isOpaque:Bool) -> AppUtils{
        self.base.isOpaque = isOpaque
        return self
    }
    
    func clearsContextBeforeDrawing(_ clearsContextBeforeDrawing:Bool) -> AppUtils{
        self.base.clearsContextBeforeDrawing = clearsContextBeforeDrawing
        return self
    }
    
    func isHidden(_ isHidden:Bool) -> AppUtils{
        self.base.isHidden = isHidden
        return self
    }
    
    func contentMode(_ contentMode:UIView.ContentMode) -> AppUtils{
        self.base.contentMode = contentMode
        return self
    }
    
    func mask(_ mask:UIView?) -> AppUtils{
        self.base.mask = mask
        return self
    }
    
    func tintColor(_ tintColor:UIColor?) -> AppUtils{
        self.base.tintColor = tintColor
        return self
    }
    
    func tintAdjustmentMode(_ tintAdjustmentMode:UIView.TintAdjustmentMode) -> AppUtils{
        self.base.tintAdjustmentMode = tintAdjustmentMode
        return self
    }
    
    
    func motionEffects(_ motionEffects:[UIMotionEffect]) -> AppUtils{
        self.base.motionEffects = motionEffects
        return self
    }
    
    func borderColor(_ borderColor:UIColor?) -> AppUtils {
        self.base.layer.borderColor = borderColor?.cgColor
        return self
    }
    
    func borderWidth(_ borderWidth:CGFloat) -> AppUtils {
        self.base.layer.borderWidth = borderWidth
        return self
    }
    
    func cornerRadius(_ cornerRadius:CGFloat) -> AppUtils {
        self.base.layer.cornerRadius = cornerRadius
        return self
    }
    
    func masksToBounds(_ masksToBounds:Bool) -> AppUtils {
        self.base.layer.masksToBounds = masksToBounds
        return self
    }
    
    func tag(_ tag:Int) -> AppUtils {
        self.base.tag = tag
        return self
    }
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) -> AppUtils{
        let maskPath = UIBezierPath(
            roundedRect: self.base.bounds,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius))
        
        let shape = CAShapeLayer()
        shape.path = maskPath.cgPath
        self.base.layer.mask = shape
        return self
    }
    
    
    func addShadow(ofColor color: UIColor = UIColor(red: 0.07, green: 0.47, blue: 0.57, alpha: 1.0), radius: CGFloat = 3, offset: CGSize = .zero, opacity: Float = 0.5) -> AppUtils {
        self.base.layer.shadowColor = color.cgColor
        self.base.layer.shadowOffset = offset
        self.base.layer.shadowRadius = radius
        self.base.layer.shadowOpacity = opacity
        self.base.layer.masksToBounds = false
        return self
    }
    
    func blur(withStyle style: UIBlurEffect.Style = .light) -> AppUtils {
        let blurEffect = UIBlurEffect(style: style)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.base.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.base.addSubview(blurEffectView)
        self.base.clipsToBounds = true
        return self
    }
    
    func finished(){}
}
