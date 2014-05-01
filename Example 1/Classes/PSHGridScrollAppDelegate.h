//
//  PSHGridScrollAppDelegate.h
//  PSHGridScroll - Example 1
//
//  Created by Ed Preston on 7/8/10.
//  Copyright Preston Software 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PSHGridScrollViewController;


@interface PSHGridScrollAppDelegate : UIResponder <UIApplicationDelegate> 

@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet UINavigationController *navigationController;
@property (nonatomic, strong) IBOutlet PSHGridScrollViewController *viewController;

@end

