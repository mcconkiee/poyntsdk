/*
 @author: ideawu
 @link: https://github.com/ideawu/Objective-C-RSA
*/

#import <Foundation/Foundation.h>

@interface PoyntRsa : NSObject


/**
 @brief encrypt a string using public key string
 @returns base64 encoded string
 **/
+ (NSString *)encryptString:(NSString *)str publicKey:(NSString *)pubKey;

/**
 @brief encrypt an NSData object using public key string
 @returns NSData object
 **/
+ (NSData *)encryptData:(NSData *)data publicKey:(NSString *)pubKey;

/**
 @brief decrypt a string using public key string
 @returns an NSString object
 **/
+ (NSString *)decryptString:(NSString *)str publicKey:(NSString *)pubKey;
/**
 @brief decrypt an NSData object using public key string
 @returns NSData object
 **/
+ (NSData *)decryptData:(NSData *)data publicKey:(NSString *)pubKey;
/**
 @brief decrypt a string using a private key string
 @returns an NSString object
 **/
+ (NSString *)decryptString:(NSString *)str privateKey:(NSString *)privKey;
/**
 @brief decrypt an NSData object using a private key string
 @returns NSData object
 **/
+ (NSData *)decryptData:(NSData *)data privateKey:(NSString *)privKey;

@end
