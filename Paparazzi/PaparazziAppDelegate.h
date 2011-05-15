//
//  PaparazziAppDelegate.h
//  Paparazzi
//
//  Created by Wang Ran on 11-5-15.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaparazziAppDelegate : NSObject <UIApplicationDelegate> {
    UITabBarController* tabController;
    UINavigationController* peopleController;
    UINavigationController* recentController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
