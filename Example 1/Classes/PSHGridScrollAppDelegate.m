//
//  PSHGridScrollAppDelegate.m
//  PSHGridScroll - Example 1
//
//  Created by Ed Preston on 7/8/10.
//  Copyright Preston Software 2010. All rights reserved.
//


#import "PSHGridScrollAppDelegate.h"
#import "PSHGridScrollViewController.h"


@implementation PSHGridScrollAppDelegate


@synthesize window;
@synthesize navigationController = _navigationController;
@synthesize viewController;


#pragma mark - Application Lifecycle

- (BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions 
{    
    // Override point for customization after app launch. 
    [window addSubview:_navigationController.view];
    [window makeKeyAndVisible];

	return YES;
}

- (void) applicationWillResignActive:(UIApplication *)application 
{
    // Sent when the application is about to move from active to inactive state. This can occur
    // for certain types of temporary interruptions (such as an incoming phone call or SMS message)
    // or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates.
    // Games should use this method to pause the game.
}

- (void) applicationDidBecomeActive:(UIApplication *)application 
{
    // Restart any tasks that were paused (or not yet started) while the application was
    // inactive. If the application was previously in the background, optionally refresh 
    // the user interface.
}

- (void) applicationWillTerminate:(UIApplication *)application 
{
    // Called when the application is about to terminate.
    // See also applicationDidEnterBackground:.
}


#pragma mark - Resource Management

- (void) applicationDidReceiveMemoryWarning:(UIApplication *)application 
{
    // Free up as much memory as possible by purging cached data objects that can be 
    // recreated (or reloaded from disk) later.
}

- (void) dealloc 
{
    [_navigationController release];
    [window release];
    [super dealloc];
}


@end
