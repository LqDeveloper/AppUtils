//
//  AppUtils+UISearchBar.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/24.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit

public extension AppUtils where Base:UISearchBar{
    func barStyle(_ barStyle: UIBarStyle) -> AppUtils {
        self.base.barStyle = barStyle
        return self
    }
    
    func delegate(_ delegate: UISearchBarDelegate?) -> AppUtils {
        self.base.delegate = delegate
        return self
    }
    
    func text(_ text: String?) -> AppUtils {
        self.base.text = text
        return self
    }
    
    func prompt(_ prompt: String?) -> AppUtils {
        self.base.prompt = prompt
        return self
    }
    
    func placeholder(_ placeholder: String?) -> AppUtils {
        self.base.placeholder = placeholder
        return self
    }
    
    func showsBookmarkButton(_ showsBookmarkButton: Bool) -> AppUtils {
        self.base.showsBookmarkButton = showsBookmarkButton
        return self
    }
    
    func showsCancelButton(_ showsCancelButton: Bool) -> AppUtils {
        self.base.showsCancelButton = showsCancelButton
        return self
    }
    
    func showsSearchResultsButton(_ showsSearchResultsButton: Bool) -> AppUtils {
        self.base.showsSearchResultsButton = showsSearchResultsButton
        return self
    }
    
    func isSearchResultsButtonSelected(_ isSearchResultsButtonSelected: Bool) -> AppUtils {
        self.base.isSearchResultsButtonSelected = isSearchResultsButtonSelected
        return self
    }
    
    func tintColor(_ tintColor: UIColor?) -> AppUtils {
        self.base.tintColor = tintColor
        return self
    }
    
    func barTintColor(_ barTintColor: UIColor?) -> AppUtils {
        self.base.barTintColor = barTintColor
        return self
    }
    
    func searchBarStyle(_ searchBarStyle: UISearchBar.Style) -> AppUtils {
        self.base.searchBarStyle = searchBarStyle
        return self
    }
    
    func isTranslucent(_ isTranslucent: Bool) -> AppUtils {
        self.base.isTranslucent = isTranslucent
        return self
    }
    
    func scopeButtonTitles(_ scopeButtonTitles: [String]?) -> AppUtils {
        self.base.scopeButtonTitles = scopeButtonTitles
        return self
    }
    
    func selectedScopeButtonIndex(_ selectedScopeButtonIndex: Int) -> AppUtils {
        self.base.selectedScopeButtonIndex = selectedScopeButtonIndex
        return self
    }
    
    func showsScopeBar(_ showsScopeBar: Bool) -> AppUtils {
        self.base.showsScopeBar = showsScopeBar
        return self
    }
    
    func inputAccessoryView(_ inputAccessoryView: UIView?) -> AppUtils {
        self.base.inputAccessoryView = inputAccessoryView
        return self
    }
    
    func backgroundImage(_ backgroundImage: UIImage?) -> AppUtils {
        self.base.backgroundImage = backgroundImage
        return self
    }
    
    func scopeBarBackgroundImage(_ scopeBarBackgroundImage: UIImage?) -> AppUtils {
        self.base.scopeBarBackgroundImage = scopeBarBackgroundImage
        return self
    }
    
    func searchFieldBackgroundPositionAdjustment(_ searchFieldBackgroundPositionAdjustment: UIOffset) -> AppUtils {
        self.base.searchFieldBackgroundPositionAdjustment = searchFieldBackgroundPositionAdjustment
        return self
    }
    
    func searchTextPositionAdjustment(_ searchTextPositionAdjustment: UIOffset) -> AppUtils {
        self.base.searchTextPositionAdjustment = searchTextPositionAdjustment
        return self
    }
}
