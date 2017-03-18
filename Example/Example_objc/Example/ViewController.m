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
    
    
    
    PoyntPOSConnectionManager *manager = [[PoyntPOSConnectionManager alloc] init];
    [manager setUrl:@"10.0.1.75:55555"];
    [manager setTimeout:6000];
    [manager setClientName:@"bugsnagger"];
    [manager setOnTransactionResponse:^(PoyntTransactionResponseObject *data, PoyntActionType type){
        NSLog(@"OnTransactionResonse! %@",data);
    }];
    
    [manager setOnError:^(NSError *error,PoyntActionType actionType){
        NSLog(@"ERROR! %@",error);
    }];
    
    [manager authorizePairing:@"Q5X7GZ"];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
