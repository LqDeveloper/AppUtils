//
//  AppUtils+UITextField.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 lq. All rights reserved.
//

import UIKit

public extension AppUtils where Base:UITextField{
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
    
    func borderStyle(_ borderStyle:UITextField.BorderStyle) -> AppUtils{
        self.base.borderStyle = borderStyle
        return self
    }
    
    func defaultTextAttributes(_ defaultTextAttributes:[NSAttributedString.Key : Any]) -> AppUtils{
        self.base.defaultTextAttributes = defaultTextAttributes
        return self
    }
    
    func placeholder(_ placeholder:String?) -> AppUtils{
        self.base.placeholder = placeholder
        return self
    }
    
    func attributedPlaceholder(_ attributedPlaceholder:NSAttributedString?) -> AppUtils{
        self.base.attributedPlaceholder = attributedPlaceholder
        return self
    }
    
    func clearsOnBeginEditing(_ clearsOnBeginEditing:Bool) -> AppUtils{
        self.base.clearsOnBeginEditing = clearsOnBeginEditing
        return self
    }
    
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth:Bool) -> AppUtils{
        self.base.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        return self
    }
    
    func minimumFontSize(_ minimumFontSize: CGFloat) -> AppUtils{
        self.base.minimumFontSize = minimumFontSize
        return self
    }
    
    func delegate(_ delegate: UITextFieldDelegate?) -> AppUtils{
        self.base.delegate = delegate
        return self
    }
    func background(_ background: UIImage?) -> AppUtils{
        self.base.background = background
        return self
    }
    
    func disabledBackground(_ disabledBackground: UIImage?) -> AppUtils{
        self.base.disabledBackground = disabledBackground
        return self
    }
    
    func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> AppUtils{
        self.base.allowsEditingTextAttributes = allowsEditingTextAttributes
        return self
    }
    
    func typingAttributes(_ typingAttributes:[NSAttributedString.Key:Any]?) -> AppUtils{
        self.base.typingAttributes = typingAttributes
        return self
    }
    
    func clearButtonMode(_ clearButtonMode: UITextField.ViewMode) -> AppUtils{
        self.base.clearButtonMode = clearButtonMode
        return self
    }
    
    func leftView(_ leftView: UIView?) -> AppUtils{
        self.base.leftView = leftView
        return self
    }
    
    func leftViewMode(_ leftViewMode: UITextField.ViewMode) -> AppUtils{
        self.base.leftViewMode = leftViewMode
        return self
    }
    
    func rightView(_ rightView: UIView?) -> AppUtils{
        self.base.rightView = rightView
        return self
    }
    
    func rightViewMode(_ rightViewMode: UITextField.ViewMode) -> AppUtils{
        self.base.rightViewMode = rightViewMode
        return self
    }
    
    func autocapitalizationType(_ autocapitalizationType: UITextAutocapitalizationType) -> AppUtils{
        self.base.autocapitalizationType = autocapitalizationType
        return self
    }
    
    func autocorrectionType(_ autocorrectionType: UITextAutocorrectionType) -> AppUtils{
        self.base.autocorrectionType = autocorrectionType
        return self
    }
    
    func spellCheckingType(_ spellCheckingType: UITextSpellCheckingType) -> AppUtils{
        self.base.spellCheckingType = spellCheckingType
        return self
    }
    
    @available(iOS 11.0, *)
    func smartQuotesType(_ smartQuotesType: UITextSmartQuotesType) -> AppUtils{
        self.base.smartQuotesType = smartQuotesType
        return self
    }
    
    @available(iOS 11.0, *)
    func smartDashesType(_ smartDashesType: UITextSmartDashesType) -> AppUtils{
        self.base.smartDashesType = smartDashesType
        return self
    }
    
    @available(iOS 11.0, *)
    func smartInsertDeleteType(_ smartInsertDeleteType: UITextSmartInsertDeleteType) -> AppUtils{
        self.base.smartInsertDeleteType = smartInsertDeleteType
        return self
    }
    
    func keyboardType(_ keyboardType: UIKeyboardType) -> AppUtils{
        self.base.keyboardType = keyboardType
        return self
    }
    
    func keyboardAppearance(_ keyboardAppearance: UIKeyboardAppearance) -> AppUtils{
        self.base.keyboardAppearance = keyboardAppearance
        return self
    }
    
    func returnKeyType(_ returnKeyType: UIReturnKeyType) -> AppUtils{
        self.base.returnKeyType = returnKeyType
        return self
    }
    
    func enablesReturnKeyAutomatically(_ enablesReturnKeyAutomatically: Bool) -> AppUtils{
        self.base.enablesReturnKeyAutomatically = enablesReturnKeyAutomatically
        return self
    }
    
    func isSecureTextEntry(_ isSecureTextEntry: Bool) -> AppUtils{
        self.base.isSecureTextEntry = isSecureTextEntry
        return self
    }
    
    @available(iOS 10.0, *)
    func textContentType(_ textContentType: UITextContentType?) -> AppUtils{
        self.base.textContentType = textContentType
        return self
    }
}
