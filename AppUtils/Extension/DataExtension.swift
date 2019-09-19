//
//  DataExtension.swift
//  AppUtils
//
//  Created by Quan Li on 2019/9/19.
//  Copyright © 2019 williamoneilchina. All rights reserved.
//
//***操作***//
//opterantion传值: (CCOperation)
//kCCEncrypt = 0    --> 加密
//kCCDecrypt        --> 解密
//***设置***//
//options传值: (CCOptions)
//kCCOptionPKCS7Padding   = 0x0001      --> 需要iv
//kCCOptionECBMode        = 0x0002      --> 不需要iv
//***类型***//
//algorithm传值: (CCAlgorithm)
//kCCKeySizeAES128          = 16    --> AES128
//kCCKeySizeAES192          = 24    --> AES192
//kCCKeySizeAES256          = 32    --> AES256
//kCCKeySizeDES             = 8     --> DES
//kCCKeySize3DES            = 24    --> 3DES
//kCCKeySizeMinCAST         = 5     --> MIN_CAST
//kCCKeySizeMaxCAST         = 16    --> MAX_CAST
//kCCKeySizeMinRC4          = 1     --> MIN_RC4
//kCCKeySizeMaxRC4          = 512   --> MAX_RC4
//kCCKeySizeMinRC2          = 1     --> MIN_RC2
//kCCKeySizeMaxRC2          = 128   --> MAX_RC2
//kCCKeySizeMinBlowfish     = 8     --> MIN_BLOWFISH
//kCCKeySizeMaxBlowfish     = 56    --> MAX_BLOWFISH
//***其他类型参数***//
//key：加密密钥（指针）  -------  keyLength：密钥长度
//dataIn：要加密的数据（指针）  ------  dataInLength：数据的长度
//dataOut：加密后的数据（指针）  ------  dataOutAvailable：数据接收的容器长度
//dataOutMoved：数据接收
//*** size_t 和 Int 有区别：
//size_t是无符号的，并且是平台无关的，表示0-MAXINT的范围;
//Int 对于 swift 是有符号的
//***const void * 和 void * 都是指针类型，分别对应swift中UnsafePointer<UInt8>
//和UnsafeMutablePointer<UInt8>，而最新的swift版本中分别对应UnsafeRawPointer
//和UnsafeMutableRawPointer

/**CCCrypt 对称加密算法的核心函数（加密/解密）
 参数：
 1、kCCEncrypt 加密/kCCDecrypt 解密
 2、加密算法、默认的 AES/DES
 3、加密方式的选项
 kCCOptionPKCS7Padding | kCCOptionECBMode;//ECB加密！
 kCCOptionPKCS7Padding;//CBC 加密！
 4、加密密钥
 5、密钥长度
 6、iv 初始化向量，ECB 不需要指定
 7、加密的数据
 8、加密的数据长度
 9、缓冲区（地址），存放密文的
 10、缓冲区的大小
 11、加密结果大小
 */

import Foundation
import CommonCrypto
public extension Data{
    init(hex: String) {
        self.init(Array<UInt8>(hex: hex))
    }
    
    var bytes: Array<UInt8> {
        return Array(self)
    }
    
    func toHexString() -> String {
        return bytes.toHexString()
    }
    
    
    /// AES 解密  字符串本身是加密后的字符
    ///
    /// - Parameters:
    ///   - key: key
    ///   - iv: 密钥
    /// - Returns: 解密后的字符
    func aesDecrypt(key:String,iv:String?,algorithm:CCAlgorithm = CCAlgorithm(kCCAlgorithmAES)) -> String? {
        guard let decryptedData = aescrypt(key: key, iv: iv, operation: CCOperation(kCCDecrypt),algorithm: algorithm) else { return nil }
        return String.init(data: decryptedData, encoding: .utf8)
    }
    
    ///  AES 加密
    ///
    /// - Parameters:
    ///   - key: 加密密钥
    ///   - iv:  加密算法、默认的 AES/DES
    ///   - operation: CCOperation(kCCEncrypt) CCOperation(kCCDecrypt)
    ///   - algorithm: CCAlgorithm
    /// - Returns: 计算的结果
    func aescrypt(key:String,iv:String?,operation: CCOperation,algorithm:CCAlgorithm = CCAlgorithm(kCCAlgorithmAES)) -> Data? {
        
        guard key.count == kCCKeySizeAES128 || key.count == kCCKeySizeAES256,let keyData = key.data(using: .utf8) else {
            debugPrint("Error: Failed to set a key.")
            return nil
        }
        
        var options = CCOptions(kCCOptionPKCS7Padding)
        if iv != nil{
            options = CCOptions(kCCOptionPKCS7Padding)//CBC 加密！
        }else{
            options = CCOptions(kCCOptionPKCS7Padding|kCCOptionECBMode)//ECB加密！
        }
        
        let ivData = iv?.data(using: .utf8)
        
        //key
        let keyBytes = keyData.bytes
        let keyLength = [UInt8](repeating: 0, count: kCCBlockSizeAES128).count
        
        //data(input) 要加密的数据（指针）
        let dateBytes = self.bytes
        let dataLength = self.count
        
        //data(output) 加密后的数据（指针）
        var cryptData = Data(count: dataLength + Int(kCCBlockSizeAES128))
        let cryptLength = cryptData.count
        
        //iv
        let ivBytes = ivData?.bytes
        var bytesDecrypted: size_t = 0
        
        let status = cryptData.withUnsafeMutableBytes { cryptBytes in
            CCCrypt(operation, algorithm, options, keyBytes, keyLength, ivBytes, dateBytes, dataLength, cryptBytes, cryptLength, &bytesDecrypted)
        }
        
        guard Int32(status) == Int32(kCCSuccess) else {
            debugPrint("Error: Failed to crypt data. Status \(status)")
            return nil
        }
        cryptData.removeSubrange(bytesDecrypted..<cryptData.count)
        return cryptData
    }
}
