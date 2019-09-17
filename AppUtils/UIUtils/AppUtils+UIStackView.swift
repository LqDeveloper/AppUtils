//
//  AppUtils+UIStackView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/8/15.
//  Copyright © 2019 lq. All rights reserved.
//

import UIKit
public extension AppUtils where Base:UIStackView{
    func addArrangedSubview(_ view: UIView)->AppUtils{
        self.base.addArrangedSubview(view)
        return self
    }
    
    func removeArrangedSubview(_ view: UIView)->AppUtils{
        self.base.removeArrangedSubview(view)
        return self
    }
    
    func insertArrangedSubview(_ view: UIView, at stackIndex: Int)->AppUtils{
        self.base.insertArrangedSubview(view, at: stackIndex)
        return self
    }
    
    func axis(_ axis: NSLayoutConstraint.Axis)->AppUtils{
        self.base.axis = axis
        return self
    }
    
    func distribution(_ distribution: UIStackView.Distribution)->AppUtils{
        self.base.distribution = distribution
        return self
    }
    
    func alignment(_ alignment: UIStackView.Alignment)->AppUtils{
        self.base.alignment = alignment
        return self
    }
    
    func spacing(_ spacing: CGFloat)->AppUtils{
        self.base.spacing = spacing
        return self
    }
    
    @available(iOS 11.0, *)
    func setCustomSpacing(_ spacing: CGFloat, after arrangedSubview: UIView)->AppUtils{
        self.base.setCustomSpacing(spacing, after: arrangedSubview)
        return self
    }
    
    
    func isBaselineRelativeArrangement(_ isBaselineRelativeArrangement: Bool)->AppUtils{
        self.base.isBaselineRelativeArrangement = isBaselineRelativeArrangement
        return self
    }
    
    
    func isLayoutMarginsRelativeArrangement(_ isLayoutMarginsRelativeArrangement: Bool)->AppUtils{
        self.base.isLayoutMarginsRelativeArrangement = isLayoutMarginsRelativeArrangement
        return self
    }
}
