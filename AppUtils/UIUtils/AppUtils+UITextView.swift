//
//  AppUtils+UITextView.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
extension AppUtils where Base:UITextView{
    public func text(_ text:String?)->AppUtils{
        self.base.text = text
        return self
    }
    
    public func attributedText(_ attributedText:NSAttributedString?)->AppUtils{
        self.base.attributedText = attributedText
        return self
    }
    
    public func font(_ font:UIFont?)->AppUtils{
        self.base.font = font
        return self
    }
    
    public func textColor(_ textColor:UIColor?)->AppUtils{
        self.base.textColor = textColor
        return self
    }
    
    public func textAlignment(_ textAlignment:NSTextAlignment)->AppUtils{
        self.base.textAlignment = textAlignment
        return self
    }
    
    public func delegate(_ delegate:UITextViewDelegate?)->AppUtils{
        self.base.delegate = delegate
        return self
    }
    
    public func selectedRange(_ selectedRange:NSRange)->AppUtils{
        self.base.selectedRange = selectedRange
        return self
    }
    
    public func isEditable(_ isEditable:Bool)->AppUtils{
        self.base.isEditable = isEditable
        return self
    }
    
    public func isSelectable(_ isSelectable:Bool)->AppUtils{
        self.base.isSelectable = isSelectable
        return self
    }
    
    public func dataDetectorTypes(_ dataDetectorTypes:UIDataDetectorTypes)->AppUtils{
        self.base.dataDetectorTypes = dataDetectorTypes
        return self
    }
    
    public func allowsEditingTextAttributes(_ allowsEditingTextAttributes:Bool)->AppUtils{
        self.base.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }
    
    public func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any])->AppUtils{
        self.base.typingAttributes = typingAttributes
        return self
    }
    
    public func inputView(_ inputView:UIView?)->AppUtils{
        self.base.inputView = inputView
        return self
    }
    
    public func inputAccessoryView(_ inputAccessoryView:UIView?)->AppUtils{
        self.base.inputAccessoryView = inputAccessoryView
        return self
    }
    
    public func clearsOnInsertion(_ clearsOnInsertion:Bool)->AppUtils{
        self.base.clearsOnInsertion = clearsOnInsertion
        return self
    }
    
    public func textContainerInset(_ textContainerInset:UIEdgeInsets)->AppUtils{
        self.base.textContainerInset = textContainerInset
        return self
    }
    
    public func linkTextAttributes(_ linkTextAttributes:[NSAttributedString.Key : Any]?)->AppUtils{
        self.base.linkTextAttributes = linkTextAttributes
        return self
    }
}
