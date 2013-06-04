//
//  BECheckBox.h
//  QQMusic
//
//  Created by jordenwu-Mac on 10-11-11.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

/****
 *  无法区分多种uicontroleventtouchupinside等等touch类的子类型
 ****/

#import <UIKit/UIKit.h>

@interface BECheckBox : UIButton
{
	BOOL isChecked;
	id target;
	SEL fun;
	NSString *selectimage;
	NSString *unselectimage;
}

@property (nonatomic,assign) BOOL isChecked;

- (id)initWithFrame:(CGRect)frame selectImage:(NSString *)_selectimg FinishedUnselectedImage:(NSString *)unselectedimage;
- (void)checkBoxClicked;
- (void)setTarget:(id)tar fun:(SEL )ff;
@end