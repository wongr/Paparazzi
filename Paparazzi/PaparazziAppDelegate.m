//
//  PaparazziAppDelegate.m
//  Paparazzi
//
//  Created by Wang Ran on 11-5-15.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "PaparazziAppDelegate.h"
#import "ContactsController.h"
#import "UserPhotosController.h"

@implementation PaparazziAppDelegate


@synthesize window=_window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //make 2 nav controllers
    peopleController = [[UINavigationController alloc]init];

    recentController = [[UINavigationController alloc]init];
    
    //make a contacts controller, and put it in the first nav
    ContactsController* contactsController = [[ContactsController alloc]initWithNibName:@"ContactsController" bundle:[NSBundle mainBundle]];
    contactsController.title = @"Contacts";
    
    //make a tab bar item for contacts
    UITabBarItem* item = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemContacts tag:0];
    contactsController.tabBarItem = item;
    [item release];
    
    [peopleController pushViewController:contactsController animated:NO];
    [contactsController release];

    //create user photos controller
    UserPhotosController* userPhotosController = [[UserPhotosController alloc]initWithNibName:@"UserPhotosController" bundle:[NSBundle mainBundle]];
    
    //make a tab bar item for contacts
    item = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemContacts tag:0];
    userPhotosController.tabBarItem = item;
    [item release];
    
    //give it a titluserPhotosController - recent
    recentController.title = @"Recents";
    
    //push it onto the second nav controller and free memory
    [recentController pushViewController: userPhotosController animated:NO];
    [userPhotosController release];
    
    //make a tab controller
    tabController = [[UITabBarController alloc]init];

    //put the nav controllers in the tab controller
    tabController.viewControllers = [NSArray arrayWithObjects:peopleController, recentController, nil];
    
    //put the view of the tab controller in the window
    [self.window addSubview:tabController.view];
    
    // Override point for customization after application launch.
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [peopleController release];
    [recentController release];
    [tabController release];

    [_window release];
    [super dealloc];
}

@end
