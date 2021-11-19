//
//  Target_A.m
//  ModuleA
//
//  Created by FlyingFish on 2021/11/19.
//

#import "Target_A.h"
#import "FSHomeViewController.h"

@implementation Target_A

- (UIViewController *)Action_getHome:(NSDictionary *)params {
    FSHomeViewController *vc = [[FSHomeViewController alloc] init];
    vc.desc = params[@"desc"];
    
    return vc;
}

@end
