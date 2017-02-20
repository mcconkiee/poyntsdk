//
//  PoyntSecondScreenObject.m
//  PoyntLib
//
//  Created by Cheng Han Lee on 2/19/17.
//  Copyright © 2017 com.poynt. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+Serialized.h"
#import "PoyntSecondScreenObject.h"

@implementation PoyntSecondScreenObject

-(void)defaultValues {
    self.items = @[];
    self.currency = @"USD";
    self.totalAmount = 0;
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self defaultValues];
    }
    return self;
}


-(NSDictionary*)dictionaryObject {
    return @{
            @"currency": self.currency,
            @"totalAmount":[NSNumber numberWithInteger:self.totalAmount],
            @"item":[self.items dictionaries]
            };
}
@end
