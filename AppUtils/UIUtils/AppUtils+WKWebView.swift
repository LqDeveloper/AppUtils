//
//  AppUtils+WKWebView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/18.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
import WebKit


public extension AppUtils where Base:WKWebView{
    func navigationDelegate(_ navigationDelegate: WKNavigationDelegate?) -> AppUtils{
        self.base.navigationDelegate = navigationDelegate
        return self
    }
    
    func uiDelegate(_ uiDelegate: WKUIDelegate?) -> AppUtils{
        self.base.uiDelegate = uiDelegate
        return self
    }
    
    func allowsBackForwardNavigationGestures(_ allowsBackForwardNavigationGestures: Bool) -> AppUtils{
        self.base.allowsBackForwardNavigationGestures = allowsBackForwardNavigationGestures
        return self
    }
    
    func customUserAgent(_ customUserAgent: String?) -> AppUtils{
        self.base.customUserAgent = customUserAgent
        return self
    }
    
    func allowsLinkPreview(_ allowsLinkPreview: Bool) -> AppUtils{
        self.base.allowsLinkPreview = allowsLinkPreview
        return self
    }
}
