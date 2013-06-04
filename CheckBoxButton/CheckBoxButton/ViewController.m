//
//  ViewController.m
//  CheckBoxButton
//
//  Created by zhenai on 13-5-21.
//  Copyright (c) 2013年 zhenai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // 默认是勾选状态
    [self->_btn sendActionsForControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClicked:(id)sender {
    NSLog(@"btnClicked");
}
- (void)dealloc {
    [_btn release];
    [super dealloc];
}
@end
