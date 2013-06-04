//
//  ViewController.h
//  CheckBoxButton
//
//  Created by zhenai on 13-5-21.
//  Copyright (c) 2013年 zhenai. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BECheckBox.h"
@interface ViewController : UIViewController

{
    IBOutlet BECheckBox *_btn;
    
}
- (IBAction)btnClicked:(id)sender;

@end
