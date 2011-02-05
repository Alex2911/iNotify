//
//  iNotifyAppDelegate.m
//  iNotify
//
//  Created by Nick Lockwood on 26/01/2011.
//  Copyright 2011 Charcoal Design. All rights reserved.
//

#import "iNotifyAppDelegate.h"
#import "iNotifyViewController.h"
#import "iNotify.h"


@implementation iNotifyAppDelegate

@synthesize window;
@synthesize viewController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{    
    // Override point for customization after application launch.

    // Add the view controller's view to the window and display.
    [self.window addSubview:viewController.view];
    [self.window makeKeyAndVisible];
	
	//iNotify init
	[iNotify appLaunched];

    return YES;
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	//iNotify init
	[iNotify appEnteredForeground];
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc
{
    [viewController release];
    [window release];
    [super dealloc];
}


@end
