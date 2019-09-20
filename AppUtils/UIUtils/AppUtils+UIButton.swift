//
//  AppUtils+UIButton.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 lq. All rights reserved.
//

import Foundation
public extension AppUtils where Base:UIButton{
    func contentEdgeInsets(_ contentEdgeInsets:UIEdgeInsets) -> AppUtils {
        self.base.contentEdgeInsets = contentEdgeInsets
        return self
    }
    
    func titleEdgeInsets(_ titleEdgeInsets:UIEdgeInsets) -> AppUtils {
        self.base.titleEdgeInsets = titleEdgeInsets
        return self
    }
    
    func reversesTitleShadowWhenHighlighted(_ reversesTitleShadowWhenHighlighted:Bool
        ) -> AppUtils {
        self.base.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted
        return self
    }
    
    func imageEdgeInsets(_ imageEdgeInsets:UIEdgeInsets) -> AppUtils {
        self.base.imageEdgeInsets = imageEdgeInsets
        return self
    }
    
    func adjustsImageWhenHighlighted(_ adjustsImageWhenHighlighted:Bool) -> AppUtils {
        self.base.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted
        return self
    }
    
    func adjustsImageWhenDisabled(_ adjustsImageWhenDisabled:Bool) -> AppUtils {
        self.base.adjustsImageWhenDisabled = adjustsImageWhenDisabled
        return self
    }
    
    func showsTouchWhenHighlighted(_ showsTouchWhenHighlighted:Bool) -> AppUtils {
        self.base.showsTouchWhenHighlighted = showsTouchWhenHighlighted
        return self
    }
    
    func tintColor(_ tintColor:UIColor?) -> AppUtils {
        self.base.tintColor = tintColor
        return self
    }
    
    func setTitle(_ title: String?, for state: UIControl.State) -> AppUtils{
        self.base.setTitle(title, for: state)
        return self
    }
    
    func setTitleColor(_ color: UIColor?, for state: UIControl.State) -> AppUtils{
        self.base.setTitleColor(color, for: state)
        return self
    }
    
    func setTitleFont(_ font:UIFont) -> AppUtils{
        self.base.titleLabel?.font = font
        return self
    }
    
    func setImage(_ image: UIImage?, for state: UIControl.State) -> AppUtils{
        self.base.setImage(image, for: state)
        return self
    }
    
    func setBackgroundImage(_ image: UIImage?, for state: UIControl.State) -> AppUtils{
        self.base.setBackgroundImage(image, for: state)
        return self
    }
    func setAttributedTitle(_ title: NSAttributedString?, for state: UIControl.State)  -> AppUtils{
        self.base.setAttributedTitle(title, for: state)
        return self
    }
}
