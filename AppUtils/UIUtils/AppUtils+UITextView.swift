//
//  AppUtils+UITextView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 lq. All rights reserved.
//

import UIKit
public extension AppUtils where Base:UITextView{
    func text(_ text:String?) -> AppUtils{
        self.base.text = text
        return self
    }
    
    func attributedText(_ attributedText:NSAttributedString?) -> AppUtils{
        self.base.attributedText = attributedText
        return self
    }
    
    func font(_ font:UIFont?) -> AppUtils{
        self.base.font = font
        return self
    }
    
    func textColor(_ textColor:UIColor?) -> AppUtils{
        self.base.textColor = textColor
        return self
    }
    
    func textAlignment(_ textAlignment:NSTextAlignment) -> AppUtils{
        self.base.textAlignment = textAlignment
        return self
    }
    
    func delegate(_ delegate:UITextViewDelegate?) -> AppUtils{
        self.base.delegate = delegate
        return self
    }
    
    func selectedRange(_ selectedRange:NSRange) -> AppUtils{
        self.base.selectedRange = selectedRange
        return self
    }
    
    func isEditable(_ isEditable:Bool) -> AppUtils{
        self.base.isEditable = isEditable
        return self
    }
    
    func isSelectable(_ isSelectable:Bool) -> AppUtils{
        self.base.isSelectable = isSelectable
        return self
    }
    
    func dataDetectorTypes(_ dataDetectorTypes:UIDataDetectorTypes) -> AppUtils{
        self.base.dataDetectorTypes = dataDetectorTypes
        return self
    }
    
    func allowsEditingTextAttributes(_ allowsEditingTextAttributes:Bool) -> AppUtils{
        self.base.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }
    
    func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]) -> AppUtils{
        self.base.typingAttributes = typingAttributes
        return self
    }
    
    func inputView(_ inputView:UIView?) -> AppUtils{
        self.base.inputView = inputView
        return self
    }
    
    func inputAccessoryView(_ inputAccessoryView:UIView?) -> AppUtils{
        self.base.inputAccessoryView = inputAccessoryView
        return self
    }
    
    func clearsOnInsertion(_ clearsOnInsertion:Bool) -> AppUtils{
        self.base.clearsOnInsertion = clearsOnInsertion
        return self
    }
    
    func textContainerInset(_ textContainerInset:UIEdgeInsets) -> AppUtils{
        self.base.textContainerInset = textContainerInset
        return self
    }
    
    func linkTextAttributes(_ linkTextAttributes:[NSAttributedString.Key : Any]?) -> AppUtils{
        self.base.linkTextAttributes = linkTextAttributes
        return self
    }
}
