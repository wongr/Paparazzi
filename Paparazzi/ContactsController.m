//
//  ContactsController.m
//  Paparazzi
//
//  Created by Wang Ran on 11-5-15.
//  Copyright 2011年 buding. All rights reserved.
//

#import "ContactsController.h"
#import "UserPhotosController.h"


@implementation ContactsController
@synthesize imageView;
@synthesize label;
@synthesize button;


-(void)buttonPress {

    //create a user photos controller
    UserPhotosController* userPhotosController = [[ UserPhotosController alloc]initWithNibName:@"UserPhotosController" bundle:[NSBundle mainBundle]];
    userPhotosController.title = @"Photos";
    
    //push it onto the navigation controller
    [self.navigationController pushViewController:userPhotosController animated:YES];
    
    [userPhotosController release];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
