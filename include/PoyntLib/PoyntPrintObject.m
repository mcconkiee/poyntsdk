//
//  PoyntPrintObject.m
//  PoyntLib
//
//  Created by Cheng Han Lee on 2/17/17.
//  Copyright © 2017 com.poynt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+Serialized.h"
#import "PoyntPrintObject.h"

@implementation PoyntPrintObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.content = @"";

        
    }
    return self;
}
-(NSDictionary*)dictionaryObject {
    return @{
             @"content":self.content,
             };
}
@end
