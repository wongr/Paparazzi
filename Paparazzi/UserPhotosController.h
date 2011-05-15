//
//  UserPhotosController.h
//  Paparazzi
//
//  Created by Wang Ran on 11-5-15.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UserPhotosController : UIViewController {
    IBOutlet UIButton* button;
}

@property (nonatomic, retain) UIButton* button;
-(IBAction) buttonPress;

@end
