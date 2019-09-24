//
//  StringExtension.swift
//  AppUtils
//
//  Created by Quan Li on 2019/8/27.
//  Copyright © 2019 lq. All rights reserved.
//

import Foundation
import CommonCrypto
public extension String{
    var range:NSRange{
        return NSRange.init(location: 0, length: self.count)
    }
    
    func isMatched(pattern:String) -> Bool{
        if NSPredicate(format: "SELF MATCHES %@", pattern).evaluate(with: self) {
            return true
        }
        return false
    }
    
    func match(pattern:String,range: NSRange,options: NSRegularExpression.Options = [],matchingOptions: NSRegularExpression.MatchingOptions = []) -> [String]{
        let regex = try? NSRegularExpression(pattern: pattern,options: options)
        let results = regex?.matches(in: self, options: matchingOptions, range: range)
        return results?.compactMap({ (result) -> String in
            String(self[Range.init(result.range, in: self)!])
        }) ?? []
    }
    
    func replace(validateString:String,pattern:String,replaceContent:String,options: NSRegularExpression.Options = [],matchingOptions: NSRegularExpression.MatchingOptions = []) -> String {
        let regex = try? NSRegularExpression(pattern: pattern, options: options)
        let modified = regex?.stringByReplacingMatches(in: validateString, options: matchingOptions, range: NSRange(location: 0, length: validateString.count), withTemplate: replaceContent)
        return modified ?? ""
    }
    
    func fractionDigits(_ fractionDigits:Int,locale: Locale = .current) -> String? {
        let formatter = NumberFormatter()
        formatter.locale = locale
        formatter.allowsFloats = true
        formatter.maximumFractionDigits = fractionDigits
        formatter.minimumFractionDigits = fractionDigits
        formatter.minimumIntegerDigits  = 1
        guard let floatValue = Float.init(self) else {
            return nil
        }
        let number = NSNumber.init(value: floatValue)
        return formatter.string(from: number)
    }
    
    
    func md5() -> String {
        let str = self.cString(using: String.Encoding.utf8)
        let strLen = CUnsignedInt(self.lengthOfBytes(using: String.Encoding.utf8))
        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<UInt8>.allocate(capacity: 16)
        CC_MD5(str!, strLen, result)
        let hash = NSMutableString()
        for i in 0 ..< digestLen {
            hash.appendFormat("%02x", result[i])
        }
        free(result)
        return String(format: hash as String)
    }
    
    /// AES 加密 字符串本身是要加密的内容
    ///
    /// - Parameters:
    ///   - key: 密钥
    ///   - iv: 初始化向量，ECB 不需要指定
    ///   - algorithm: 加密算法、默认的 AES/DES
    /// - Returns: 加密后的字符串
    func aesEncrypt(key:String,iv:String?,algorithm:CCAlgorithm = CCAlgorithm(kCCAlgorithmAES)) -> Data? {
        guard let strData = self.data(using: .utf8) else {
            return nil
        }
        guard let encrypyData = strData.aescrypt(key: key, iv: iv, operation: CCOperation(kCCEncrypt), algorithm: algorithm) else {
            return nil
        }
        return encrypyData
    }
}


public extension NSString{
    func size(font:UIFont) -> CGSize {
        let fontAttribute = [NSAttributedString.Key.font:font]
        let sizeValue = size(withAttributes: fontAttribute)
        return sizeValue
    }
    
    func height(width:CGFloat,font:UIFont) -> CGFloat {
        let constraintSize = CGSize.init(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = boundingRect(with: constraintSize, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font:font], context: nil)
        return ceil(boundingBox.height)
    }
    
    func width(height:CGFloat,font:UIFont) -> CGFloat {
        let constraintSize = CGSize.init(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = boundingRect(with: constraintSize, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font:font], context: nil)
        return ceil(boundingBox.width)
    }
}
