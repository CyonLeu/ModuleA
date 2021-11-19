//
//  FSHomeViewController.m
//  ModuleA
//
//  Created by FlyingFish on 2021/11/19.
//

#import "FSHomeViewController.h"
#import "CTMediator+ModuleB.h"

@interface FSHomeViewController ()

@end

@implementation FSHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Modul A Home";

    self.view.backgroundColor = [UIColor yellowColor];
    
    [self setupView];
}

- (void)setupView {
    
    UILabel *descLabel = [[UILabel alloc] init];
    descLabel.font = [UIFont systemFontOfSize:20];
    descLabel.textColor = [UIColor blueColor];
    descLabel.textAlignment = NSTextAlignmentCenter;
    descLabel.frame = CGRectMake(0, 150, CGRectGetWidth([UIScreen mainScreen].bounds), 50);
    descLabel.numberOfLines = 0;
    [self.view addSubview:descLabel];
    descLabel.text = self.desc;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"Get ModuleB Page" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(showModuleBPage) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    button.frame = CGRectMake(100, 250, 100, 44);
    
}

- (UIViewController *)Action_getHome:(NSDictionary *)params {
    FSHomeViewController *vc = [[FSHomeViewController alloc] init];
    vc.desc = params[@"desc"];
    
    
    return vc;
}

- (void)showModuleBPage {
    UIViewController *moduleBPage = [[CTMediator sharedInstance] getHomePage:@"A call B"];
    if (moduleBPage) {
        [self presentViewController:moduleBPage animated:YES completion:nil];
    }
}

@end
