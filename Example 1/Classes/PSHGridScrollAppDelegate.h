//
//  PSHGridScrollAppDelegate.h
//  PSHGridScroll - Example 1
//
//  Created by Ed Preston on 7/8/10.
//  Copyright Preston Software 2010. All rights reserved.
//


#import <UIKit/UIKit.h>

@class PSHGridScrollViewController;

@interface PSHGridScrollAppDelegate : NSObject <UIApplicationDelegate> 
{
    UIWindow *window;
	UINavigationController *_navigationController;
    PSHGridScrollViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;
@property (nonatomic, retain) IBOutlet PSHGridScrollViewController *viewController;


@end

