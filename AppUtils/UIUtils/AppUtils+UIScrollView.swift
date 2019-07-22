//
//  AppUtils+UIScrollView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
@available(iOS 11.0, *)
extension AppUtils where Base:UIScrollView{
    public func contentOffset(_ contentOffset:CGPoint)->AppUtils{
        self.base.contentOffset = contentOffset
        return self
    }
    
    public func contentSize(_ contentSize:CGSize)->AppUtils{
        self.base.contentSize = contentSize
        return self
    }
    
    public func contentInset(_ contentInset:UIEdgeInsets)->AppUtils{
        self.base.contentInset = contentInset
        return self
    }
    
    @available(iOS 11.0, *)
    public func contentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior:UIScrollView.ContentInsetAdjustmentBehavior)->AppUtils{
        self.base.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior
        return self
    }
    
    public func delegate(_ delegate: UIScrollViewDelegate?)->AppUtils{
        self.base.delegate = delegate
        return self
    }
    
    public func isDirectionalLockEnabled(_ isDirectionalLockEnabled: Bool)->AppUtils{
        self.base.isDirectionalLockEnabled = isDirectionalLockEnabled
        return self
    }
    
    public func bounces(_ bounces: Bool)->AppUtils{
        self.base.bounces = bounces
        return self
    }
    
    public func alwaysBounceVertical(_ alwaysBounceVertical: Bool)->AppUtils{
        self.base.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    public func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool)->AppUtils{
        self.base.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    public func isPagingEnabled(_ isPagingEnabled: Bool)->AppUtils{
        self.base.isPagingEnabled = isPagingEnabled
        return self
    }
    
    public func isScrollEnabled(_ isScrollEnabled: Bool)->AppUtils{
        self.base.isScrollEnabled = isScrollEnabled
        return self
    }
    
    public func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool)->AppUtils{
        self.base.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    public func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool)->AppUtils{
        self.base.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    public func scrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets)->AppUtils{
        self.base.scrollIndicatorInsets = scrollIndicatorInsets
        return self
    }
    
    public func indicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle)->AppUtils{
        self.base.indicatorStyle = indicatorStyle
        return self
    }
    
    public func minimumZoomScale(_ minimumZoomScale: CGFloat)->AppUtils{
        self.base.minimumZoomScale = minimumZoomScale
        return self
    }
    
    public func maximumZoomScale(_ maximumZoomScale: CGFloat)->AppUtils{
        self.base.maximumZoomScale = maximumZoomScale
        return self
    }
    
    public func zoomScale(_ zoomScale: CGFloat)->AppUtils{
        self.base.zoomScale = zoomScale
        return self
    }
    
    public func bouncesZoom(_ bouncesZoom: Bool)->AppUtils{
        self.base.bouncesZoom = bouncesZoom
        return self
    }
    
    public func scrollsToTop(_ scrollsToTop: Bool)->AppUtils{
        self.base.scrollsToTop = scrollsToTop
        return self
    }
    
    public func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode)->AppUtils{
        self.base.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    public func refreshControl(_ refreshControl: UIRefreshControl?)->AppUtils{
        self.base.refreshControl = refreshControl
        return self
    }
}
