//
//  FSHomeViewController.h
//  ModuleA
//
//  Created by FlyingFish on 2021/11/19.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface FSHomeViewController : UIViewController

@property (strong, nonatomic) NSString *desc;

- (UIViewController *)Action_getHome:(NSDictionary *)params;

@end

NS_ASSUME_NONNULL_END
