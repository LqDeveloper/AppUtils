//
//  AppUtils+String.swift
//  AppUtils
//
//  Created by Quan Li on 2019/7/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import Foundation
extension String:AppUtilsProtocol{}
public extension AppUtils where Base == String{
    func sizeOfString(font:UIFont) -> CGSize {
        let fontAttribute = [NSAttributedString.Key.font:font]
        let size = self.base.size(withAttributes: fontAttribute)
        return size
    }
    
    func height(width:CGFloat,font:UIFont) -> CGFloat {
        let constraintSize = CGSize.init(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.base.boundingRect(with: constraintSize, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font:font], context: nil)
        return ceil(boundingBox.height)
    }
    
    func width(height:CGFloat,font:UIFont) -> CGFloat {
        let constraintSize = CGSize.init(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.base.boundingRect(with: constraintSize, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font:font], context: nil)
        return ceil(boundingBox.width)
    }
    
}
