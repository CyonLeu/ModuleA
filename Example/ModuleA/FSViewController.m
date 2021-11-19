//
//  FSViewController.m
//  ModuleA
//
//  Created by CyonLeu on 11/19/2021.
//  Copyright (c) 2021 CyonLeu. All rights reserved.
//

#import "FSViewController.h"

@interface FSViewController ()

@end

@implementation FSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onShowHome:(id)sender{
    Class homeClass = NSClassFromString(@"Target_A");
    SEL selector = NSSelectorFromString(@"Action_getHome:");
    
    id target = [[homeClass alloc] init];
    
    NSDictionary *params = @{@"desc":@"This is home \n from Target alloc"};
    
    UIViewController *homeVC = [target performSelector:selector withObject:params];
    [self presentViewController:homeVC animated:YES completion:nil];
}

@end
