//
//  AppUtils+UIStackView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/8/15.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import Foundation
extension AppUtils where Base:UIStackView{
    public func addArrangedSubview(_ view: UIView)->AppUtils{
        self.base.addArrangedSubview(view)
        return self
    }
    
    public func removeArrangedSubview(_ view: UIView)->AppUtils{
        self.base.removeArrangedSubview(view)
        return self
    }
    
    public func insertArrangedSubview(_ view: UIView, at stackIndex: Int)->AppUtils{
        self.base.insertArrangedSubview(view, at: stackIndex)
        return self
    }
    
    public func axis(_ axis: NSLayoutConstraint.Axis)->AppUtils{
        self.base.axis = axis
        return self
    }
    
    public func distribution(_ distribution: UIStackView.Distribution)->AppUtils{
        self.base.distribution = distribution
        return self
    }
    
    public func alignment(_ alignment: UIStackView.Alignment)->AppUtils{
        self.base.alignment = alignment
        return self
    }
    
    public func spacing(_ spacing: CGFloat)->AppUtils{
        self.base.spacing = spacing
        return self
    }
    
    
    public func setCustomSpacing(_ spacing: CGFloat, after arrangedSubview: UIView)->AppUtils{
        if #available(iOS 11.0, *){
            self.base.setCustomSpacing(spacing, after: arrangedSubview)
        }
        return self
    }
    
    
    public func isBaselineRelativeArrangement(_ isBaselineRelativeArrangement: Bool)->AppUtils{
        self.base.isBaselineRelativeArrangement = isBaselineRelativeArrangement
        return self
    }
    
    
    public func isLayoutMarginsRelativeArrangement(_ isLayoutMarginsRelativeArrangement: Bool)->AppUtils{
        self.base.isLayoutMarginsRelativeArrangement = isLayoutMarginsRelativeArrangement
        return self
    }
    
    
}
