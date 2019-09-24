//
//  NSAttributedStringExtension.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/17.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//

import Foundation

public func + (lhs: NSAttributedString, rhs: NSAttributedString) -> NSAttributedString {
    let result = NSMutableAttributedString()
    result.append(lhs)
    result.append(rhs)
    return NSAttributedString(attributedString: result)
}
