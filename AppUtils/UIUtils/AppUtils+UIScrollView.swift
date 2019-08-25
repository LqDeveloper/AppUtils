//
//  AppUtils+UIScrollView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
public extension AppUtils where Base:UIScrollView{
    func contentOffset(_ contentOffset:CGPoint)->AppUtils{
        self.base.contentOffset = contentOffset
        return self
    }
    
    func contentSize(_ contentSize:CGSize)->AppUtils{
        self.base.contentSize = contentSize
        return self
    }
    
    func contentInset(_ contentInset:UIEdgeInsets)->AppUtils{
        self.base.contentInset = contentInset
        return self
    }
    
    @available(iOS 11.0, *)
    func contentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior:UIScrollView.ContentInsetAdjustmentBehavior)->AppUtils{
        self.base.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior
        return self
    }
    
    func delegate(_ delegate: UIScrollViewDelegate?)->AppUtils{
        self.base.delegate = delegate
        return self
    }
    
    func isDirectionalLockEnabled(_ isDirectionalLockEnabled: Bool)->AppUtils{
        self.base.isDirectionalLockEnabled = isDirectionalLockEnabled
        return self
    }
    
    func bounces(_ bounces: Bool)->AppUtils{
        self.base.bounces = bounces
        return self
    }
    
    func alwaysBounceVertical(_ alwaysBounceVertical: Bool)->AppUtils{
        self.base.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool)->AppUtils{
        self.base.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    func isPagingEnabled(_ isPagingEnabled: Bool)->AppUtils{
        self.base.isPagingEnabled = isPagingEnabled
        return self
    }
    
    func isScrollEnabled(_ isScrollEnabled: Bool)->AppUtils{
        self.base.isScrollEnabled = isScrollEnabled
        return self
    }
    
    func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool)->AppUtils{
        self.base.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool)->AppUtils{
        self.base.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    func scrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets)->AppUtils{
        self.base.scrollIndicatorInsets = scrollIndicatorInsets
        return self
    }
    
    func indicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle)->AppUtils{
        self.base.indicatorStyle = indicatorStyle
        return self
    }
    
    func minimumZoomScale(_ minimumZoomScale: CGFloat)->AppUtils{
        self.base.minimumZoomScale = minimumZoomScale
        return self
    }
    
    func maximumZoomScale(_ maximumZoomScale: CGFloat)->AppUtils{
        self.base.maximumZoomScale = maximumZoomScale
        return self
    }
    
    func zoomScale(_ zoomScale: CGFloat)->AppUtils{
        self.base.zoomScale = zoomScale
        return self
    }
    
    func bouncesZoom(_ bouncesZoom: Bool)->AppUtils{
        self.base.bouncesZoom = bouncesZoom
        return self
    }
    
    func scrollsToTop(_ scrollsToTop: Bool)->AppUtils{
        self.base.scrollsToTop = scrollsToTop
        return self
    }
    
    func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode)->AppUtils{
        self.base.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    func refreshControl(_ refreshControl: UIRefreshControl?)->AppUtils{
        self.base.refreshControl = refreshControl
        return self
    }
}
