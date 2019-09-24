//
//  AppUtils+WKWebViewConfiguration.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/18.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//


import WebKit

public extension AppUtils where Base:WKWebViewConfiguration{
    func processPool(_ processPool: WKProcessPool) -> AppUtils{
        self.base.processPool = processPool
        return self
    }
    
    func preferences(_ preferences: WKPreferences) -> AppUtils{
        self.base.preferences = preferences
        return self
    }
    
    func userContentController(_ userContentController: WKUserContentController) -> AppUtils{
        self.base.userContentController = userContentController
        return self
    }
    
    func websiteDataStore(_ websiteDataStore: WKWebsiteDataStore) -> AppUtils{
        self.base.websiteDataStore = websiteDataStore
        return self
    }
    
    func suppressesIncrementalRendering(_ suppressesIncrementalRendering: Bool) -> AppUtils{
        self.base.suppressesIncrementalRendering = suppressesIncrementalRendering
        return self
    }
    
    func applicationNameForUserAgent(_ applicationNameForUserAgent: String?) -> AppUtils{
        self.base.applicationNameForUserAgent = applicationNameForUserAgent
        return self
    }
    
    func allowsAirPlayForMediaPlayback(_ allowsAirPlayForMediaPlayback: Bool) -> AppUtils{
        self.base.allowsAirPlayForMediaPlayback = allowsAirPlayForMediaPlayback
        return self
    }
    
    @available(iOS 10.0, *)
    func mediaTypesRequiringUserActionForPlayback(_ mediaTypesRequiringUserActionForPlayback: WKAudiovisualMediaTypes) -> AppUtils{
        self.base.mediaTypesRequiringUserActionForPlayback = mediaTypesRequiringUserActionForPlayback
        return self
    }
    
    func allowsInlineMediaPlayback(_ allowsInlineMediaPlayback: Bool) -> AppUtils{
        self.base.allowsInlineMediaPlayback = allowsInlineMediaPlayback
        return self
    }
    
    func selectionGranularity(_ selectionGranularity: WKSelectionGranularity) -> AppUtils{
        self.base.selectionGranularity = selectionGranularity
        return self
    }
    
    func allowsPictureInPictureMediaPlayback(_ allowsPictureInPictureMediaPlayback: Bool) -> AppUtils{
        self.base.allowsPictureInPictureMediaPlayback = allowsPictureInPictureMediaPlayback
        return self
    }
    
    @available(iOS 10.0, *)
    func dataDetectorTypes(_ dataDetectorTypes: WKDataDetectorTypes) -> AppUtils{
        self.base.dataDetectorTypes = dataDetectorTypes
        return self
    }
    
    @available(iOS 10.0, *)
    func ignoresViewportScaleLimits(_ ignoresViewportScaleLimits: Bool) -> AppUtils{
        self.base.ignoresViewportScaleLimits = ignoresViewportScaleLimits
        return self
    }
    
    @available(iOS 11.0, *)
    func setURLSchemeHandler(_ urlSchemeHandler: WKURLSchemeHandler?, forURLScheme urlScheme: String) -> AppUtils{
        self.base.setURLSchemeHandler(urlSchemeHandler, forURLScheme: urlScheme)
        return self
    }
    
}
