//
//  PoyntKeyGen.h
//  PoyntLib
//
//  Created by Eric McConkie on 4/14/17.
//  Copyright © 2017 com.poynt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PoyntKeyGen : NSObject

+(void)generate:(void(^)(NSString *privateKey,NSString *publicKey))block;
@end
