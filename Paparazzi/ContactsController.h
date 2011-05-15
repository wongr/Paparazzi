//
//  ContactsController.h
//  Paparazzi
//
//  Created by Wang Ran on 11-5-15.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ContactsController : UIViewController {
    IBOutlet UIImageView* imageView;
    IBOutlet UILabel* label;
    IBOutlet UIButton* button;
}


@property (nonatomic, retain) UIImageView* imageView;
@property (nonatomic, retain) UILabel* label;
@property (nonatomic, retain) UIButton* button;

-(IBAction) buttonPress;

@end
