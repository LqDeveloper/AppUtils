//
//  AppUtils+UITextField.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import UIKit
extension AppUtils where Base:UITextField{
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
    
    public func borderStyle(_ borderStyle:UITextField.BorderStyle)->AppUtils{
        self.base.borderStyle = borderStyle
        return self
    }
    
    public func defaultTextAttributes(_ defaultTextAttributes:[NSAttributedString.Key : Any])->AppUtils{
        self.base.defaultTextAttributes = defaultTextAttributes
        return self
    }
    
    public func placeholder(_ placeholder:String?)->AppUtils{
        self.base.placeholder = placeholder
        return self
    }
    
    public func attributedPlaceholder(_ attributedPlaceholder:NSAttributedString?)->AppUtils{
        self.base.attributedPlaceholder = attributedPlaceholder
        return self
    }
    
    public func clearsOnBeginEditing(_ clearsOnBeginEditing:Bool)->AppUtils{
        self.base.clearsOnBeginEditing = clearsOnBeginEditing
        return self
    }
    
    public func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth:Bool)->AppUtils{
        self.base.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    public func minimumFontSize(_ minimumFontSize: CGFloat)->AppUtils{
        self.base.minimumFontSize = minimumFontSize
        return self
    }
    
    public func delegate(_ delegate: UITextFieldDelegate?)->AppUtils{
        self.base.delegate = delegate
        return self
    }
    public func background(_ background: UIImage?)->AppUtils{
        self.base.background = background
        return self
    }
    
    public func disabledBackground(_ disabledBackground: UIImage?)->AppUtils{
        self.base.disabledBackground = disabledBackground
        return self
    }
    
    public func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool)->AppUtils{
        self.base.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }
    
    public func typingAttributes(_ typingAttributes:[NSAttributedString.Key:Any]?)->AppUtils{
        self.base.typingAttributes = typingAttributes
        return self
    }

    public func clearButtonMode(_ clearButtonMode: UITextField.ViewMode)->AppUtils{
        self.base.clearButtonMode = clearButtonMode
        return self
    }
    
    public func leftView(_ leftView: UIView?)->AppUtils{
        self.base.leftView = leftView
        return self
    }
    
    public func leftViewMode(_ leftViewMode: UITextField.ViewMode)->AppUtils{
        self.base.leftViewMode = leftViewMode
        return self
    }
    
    public func rightView(_ rightView: UIView?)->AppUtils{
        self.base.rightView = rightView
        return self
    }
    
    public func rightViewMode(_ rightViewMode: UITextField.ViewMode)->AppUtils{
        self.base.rightViewMode = rightViewMode
        return self
    }
    
    public func autocapitalizationType(_ autocapitalizationType: UITextAutocapitalizationType)->AppUtils{
        self.base.autocapitalizationType = autocapitalizationType
        return self
    }
    
    public func autocorrectionType(_ autocorrectionType: UITextAutocorrectionType)->AppUtils{
        self.base.autocorrectionType = autocorrectionType
        return self
    }
    
    public func spellCheckingType(_ spellCheckingType: UITextSpellCheckingType)->AppUtils{
        self.base.spellCheckingType = spellCheckingType
        return self
    }
    
    @available(iOS 11.0, *)
    public func smartQuotesType(_ smartQuotesType: UITextSmartQuotesType)->AppUtils{
        self.base.smartQuotesType = smartQuotesType
        return self
    }
    
    @available(iOS 11.0, *)
    public func smartDashesType(_ smartDashesType: UITextSmartDashesType)->AppUtils{
        self.base.smartDashesType = smartDashesType
        return self
    }
    
    @available(iOS 11.0, *)
    public func smartInsertDeleteType(_ smartInsertDeleteType: UITextSmartInsertDeleteType)->AppUtils{
        self.base.smartInsertDeleteType = smartInsertDeleteType
        return self
    }
    
    public func keyboardType(_ keyboardType: UIKeyboardType)->AppUtils{
        self.base.keyboardType = keyboardType
        return self
    }
    
    public func keyboardAppearance(_ keyboardAppearance: UIKeyboardAppearance)->AppUtils{
        self.base.keyboardAppearance = keyboardAppearance
        return self
    }
    
    public func returnKeyType(_ returnKeyType: UIReturnKeyType)->AppUtils{
        self.base.returnKeyType = returnKeyType
        return self
    }
    
    public func enablesReturnKeyAutomatically(_ enablesReturnKeyAutomatically: Bool)->AppUtils{
        self.base.enablesReturnKeyAutomatically = enablesReturnKeyAutomatically
        return self
    }
    
    public func isSecureTextEntry(_ isSecureTextEntry: Bool)->AppUtils{
        self.base.isSecureTextEntry = isSecureTextEntry
        return self
    }
    
    @available(iOS 10.0, *)
    public func textContentType(_ textContentType: UITextContentType?)->AppUtils{
        self.base.textContentType = textContentType
        return self
    }
}
