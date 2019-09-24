//
//  AppUtils+UIWebView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/18.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

#if canImport(UIKit)
import UIKit
#endif

public extension AppUtils where Base:UIWebView{
    func delegate(_ delegate: UIWebViewDelegate?) -> AppUtils{
        self.base.delegate = delegate
        return self
    }
    
    func scalesPageToFit(_ scalesPageToFit: Bool) -> AppUtils{
        self.base.scalesPageToFit = scalesPageToFit
        return self
    }
    
    func dataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes) -> AppUtils{
        self.base.dataDetectorTypes = dataDetectorTypes
        return self
    }
    
    func allowsInlineMediaPlayback(_ allowsInlineMediaPlayback: Bool) -> AppUtils{
        self.base.allowsInlineMediaPlayback = allowsInlineMediaPlayback
        return self
    }
    
    func mediaPlaybackRequiresUserAction(_ mediaPlaybackRequiresUserAction: Bool) -> AppUtils{
        self.base.mediaPlaybackRequiresUserAction = mediaPlaybackRequiresUserAction
        return self
    }
    
    func mediaPlaybackAllowsAirPlay(_ mediaPlaybackAllowsAirPlay: Bool) -> AppUtils{
        self.base.mediaPlaybackAllowsAirPlay = mediaPlaybackAllowsAirPlay
        return self
    }
    
    func suppressesIncrementalRendering(_ suppressesIncrementalRendering: Bool) -> AppUtils{
        self.base.suppressesIncrementalRendering = suppressesIncrementalRendering
        return self
    }
    
    func keyboardDisplayRequiresUserAction(_ keyboardDisplayRequiresUserAction: Bool) -> AppUtils{
        self.base.keyboardDisplayRequiresUserAction = keyboardDisplayRequiresUserAction
        return self
    }
    
    func paginationMode(_ paginationMode: UIWebView.PaginationMode) -> AppUtils{
        self.base.paginationMode = paginationMode
        return self
    }
    
    func paginationBreakingMode(_ paginationBreakingMode: UIWebView.PaginationBreakingMode) -> AppUtils{
        self.base.paginationBreakingMode = paginationBreakingMode
        return self
    }
    
    func pageLength(_ pageLength: CGFloat) -> AppUtils{
        self.base.pageLength = pageLength
        return self
    }
    
    func gapBetweenPages(_ gapBetweenPages: CGFloat) -> AppUtils{
        self.base.gapBetweenPages = gapBetweenPages
        return self
    }
    
    func allowsPictureInPictureMediaPlayback(_ allowsPictureInPictureMediaPlayback: Bool) -> AppUtils{
        self.base.allowsPictureInPictureMediaPlayback = allowsPictureInPictureMediaPlayback
        return self
    }
    
    func allowsLinkPreview(_ allowsLinkPreview: Bool) -> AppUtils{
        self.base.allowsLinkPreview = allowsLinkPreview
        return self
    }
    
    //    UIScrollView
    func contentOffset(_ contentOffset: CGPoint) -> AppUtils{
        self.base.scrollView.contentOffset = contentOffset
        return self
    }
    
    func contentSize(_ contentSize: CGSize) -> AppUtils{
        self.base.scrollView.contentSize = contentSize
        return self
    }
    
    func contentInset(_ contentInset: UIEdgeInsets) -> AppUtils{
        self.base.scrollView.contentInset = contentInset
        return self
    }
    
    func adjustedContentInsetDidChange() -> AppUtils {
        if #available(iOS 11.0, *) {
            self.base.scrollView.adjustedContentInsetDidChange()
        } else {}
        return self
    }
    
    
    @available(iOS 11.0, *)
    func contentInsetAdjustmentBehavior(_ contentInsetAdjustmentBehavior:UIScrollView.ContentInsetAdjustmentBehavior) -> AppUtils{
        self.base.scrollView.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior
        return self
    }
    
    func delegate(_ delegate: UIScrollViewDelegate?) -> AppUtils{
        self.base.scrollView.delegate = delegate
        return self
    }
    
    func isDirectionalLockEnabled(_ isDirectionalLockEnabled: Bool) -> AppUtils{
        self.base.scrollView.isDirectionalLockEnabled = isDirectionalLockEnabled
        return self
    }
    
    func bounces(_ bounces: Bool) -> AppUtils{
        self.base.scrollView.bounces = bounces
        return self
    }
    
    func alwaysBounceVertical(_ alwaysBounceVertical: Bool) -> AppUtils{
        self.base.scrollView.alwaysBounceVertical = alwaysBounceVertical
        return self
    }
    
    func alwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> AppUtils{
        self.base.scrollView.alwaysBounceHorizontal = alwaysBounceHorizontal
        return self
    }
    func isPagingEnabled(_ isPagingEnabled: Bool) -> AppUtils{
        self.base.scrollView.isPagingEnabled = isPagingEnabled
        return self
    }
    
    func isScrollEnabled(_ isScrollEnabled: Bool) -> AppUtils{
        self.base.scrollView.isScrollEnabled = isScrollEnabled
        return self
    }
    
    func showsHorizontalScrollIndicator(_ showsHorizontalScrollIndicator: Bool) -> AppUtils{
        self.base.scrollView.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
        return self
    }
    
    func showsVerticalScrollIndicator(_ showsVerticalScrollIndicator: Bool) -> AppUtils{
        self.base.scrollView.showsVerticalScrollIndicator = showsVerticalScrollIndicator
        return self
    }
    
    func scrollIndicatorInsets(_ scrollIndicatorInsets: UIEdgeInsets) -> AppUtils{
        self.base.scrollView.scrollIndicatorInsets = scrollIndicatorInsets
        return self
    }
    
    func indicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle) -> AppUtils{
        self.base.scrollView.indicatorStyle = indicatorStyle
        return self
    }
    
    func minimumZoomScale(_ minimumZoomScale: CGFloat) -> AppUtils{
        self.base.scrollView.minimumZoomScale = minimumZoomScale
        return self
    }
    
    func maximumZoomScale(_ maximumZoomScale: CGFloat) -> AppUtils{
        self.base.scrollView.maximumZoomScale = maximumZoomScale
        return self
    }
    
    func zoomScale(_ zoomScale: CGFloat) -> AppUtils{
        self.base.scrollView.zoomScale = zoomScale
        return self
    }
    
    func bouncesZoom(_ bouncesZoom: Bool) -> AppUtils{
        self.base.scrollView.bouncesZoom = bouncesZoom
        return self
    }
    
    func scrollsToTop(_ scrollsToTop: Bool) -> AppUtils{
        self.base.scrollView.scrollsToTop = scrollsToTop
        return self
    }
    
    func keyboardDismissMode(_ keyboardDismissMode: UIScrollView.KeyboardDismissMode) -> AppUtils{
        self.base.scrollView.keyboardDismissMode = keyboardDismissMode
        return self
    }
    
    @available(iOS 10.0, *)
    func refreshControl(_ refreshControl: UIRefreshControl?) -> AppUtils{
        self.base.scrollView.refreshControl = refreshControl
        return self
    }
    
}

