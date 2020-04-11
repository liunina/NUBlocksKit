//
//  NUViewController.m
//  NUBlocksKit
//
//  Created by i19850511@gmail.com on 01/15/2020.
//  Copyright (c) 2020 i19850511@gmail.com. All rights reserved.
//

#import "NUViewController.h"
#import <NUBlocksKit/UIView+BlocksKit.h>

@interface NUViewController ()
@property (nonatomic, strong) UIView *redView;

@end

@implementation NUViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	_redView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
	_redView.backgroundColor = [UIColor redColor];
	[self.view addSubview:_redView];
	
	[self.view bk_whenDoubleTapped:^{
		
		NSLog(@"CLICK");
	}];
	
	UITapGestureRecognizer *singleFingerTap =
	  [[UITapGestureRecognizer alloc] initWithTarget:self
											  action:@selector(handleSingleTap:)];
	[self.redView addGestureRecognizer:singleFingerTap];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//The event handling method
- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer
{
  CGPoint location = [recognizer locationInView:[recognizer.view superview]];

  //Do stuff here...
}
@end
