;//
//  PoyntCrypto.h
//  PoyntLib
//
//  Created by Eric McConkie on 4/11/17.
//  Copyright © 2017 com.poynt. All rights reserved.
//
//1) iOS generates a pairing code (servers as diff functionlaity as old pairing code) and RSA key pair
//2) iOS  sends public key and pairing code to android and at the same time, display the n-digit (maybe 4-6) pairing code to the user
//3) on android, we will ask tell them that TheAppName wants to pair, please confirm the pairing code to be the same as the one on iOS if they wanna pair
//4) if yes, android generates a secret ( secret is the same as our old pairing code but much longer) and uses the public key to encrypt this secret
//5) send it back to ios
//6) ios decrypt and save the secret
//7) rest is the same as before (sign requests with the secret)

#import <Foundation/Foundation.h>

/**
 @brief PoyntCrypto manages the public/private key generation and decryption of encrypted strings from a Poynt Smart terminal. This class is used internally with the SDK for pairing and processing / decrypting data that was encrypted with the matching public key
 **/

@interface PoyntCrypto : NSObject
/**
 @brief decrypt an encrypted NSString object.
 @returns NSString object
 **/
-(NSString*)decryptString:(NSString*)encryptedString ;

/**
 @brief generates both public and private keys for communicating with a Poynt Smart Terminal
 @description when pairing with a terminal, PoyntCrypto will generate both priate and public keys for encrypting and decrypting data. Both are returned in a callback block 
 **/
-(void)generateKeyPairWithPublicTag:(NSString *)publicTagString privateTag:(NSString *)privateTagString block:(void(^)(NSString * privateKey,NSString * publicKey))block;

/**
 @brief generates random alphanumeric string of length `len`
 @returns NSString object
 **/
+(NSString *) randomStringWithLength: (int) len ;

@end
