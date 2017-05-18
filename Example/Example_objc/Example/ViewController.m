//
//  ViewController.m
//  Example
//
//  Created by Eric McConkie on 3/16/17.
//  Copyright © 2017 Poynt. All rights reserved.
//

#import "ViewController.h"
#import <PoyntLib/PoyntLib.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    __block PoyntPOSConnectionManager *manager = [[PoyntPOSConnectionManager alloc] init];
    [manager setUrl:@"10.0.1.22:55555"];
    [manager setTimeout:6000];
    [manager setClientName:@"bugsnagger"];
    [manager setOnTransactionResponse:^(PoyntTransactionResponseObject *data, PoyntActionType type){
        NSLog(@"OnTransactionResonse! %@",data);
    }];
    
    [manager setOnError:^(NSError *error,PoyntActionType actionType){
        NSLog(@"ERROR! %@",error);
    }];
    
    [manager attemptPairing:^(BOOL flag, NSError *err) {
        if(flag){//success!
            NSString *poyntRequestId    = [[NSUUID UUID] UUIDString];
            NSString *refId             = [[NSUUID UUID] UUIDString];
            NSString *orderId           = [[NSUUID UUID] UUIDString];
            NSString *json =[NSString stringWithFormat:@"{\"timeout\":60000,\"poyntRequestId\":\"%@\",\"payment\":{\"currency\":\"USD\",\"referenceId\":\"%@\",\"orderId\":\"%@\",\"amount\":1000,\"tipAmount\":0,\"cashbackAmount\":0,\"disableDebitCards\":false,\"disableCash\":false,\"debit\":false,\"disableTip\":false,\"skipReceiptScreen\":false,\"cashOnly\":false,\"nonReferencedCredit\":false,\"multiTender\":false}}",poyntRequestId,refId,orderId];
            [manager authorizeJson:json endPoint:@"devices/cat/authorizeSales" callback:^(id responseData, NSError *error) {
                
                NSError *jsonError = nil;
                NSDictionary * json = [NSJSONSerialization JSONObjectWithData:responseData options:NSJSONReadingMutableLeaves error:&jsonError];
                NSString *reqId = [json objectForKey:@"poyntRequestId" ];
                NSLog(@"response for request has id: %@\r\n%@",reqId,json);
            }];
        }
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
