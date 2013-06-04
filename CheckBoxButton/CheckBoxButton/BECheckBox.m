//
//  BECheckBox.m
//  QQMusic
//
//  Created by jordenwu-Mac on 10-11-11.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//
//********************************//
//  MODIFY BY Snow.Wu
//********************************//
#import "BECheckBox.h"

@implementation BECheckBox
@synthesize isChecked;

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
		self.contentHorizontalAlignment  = UIControlContentHorizontalAlignmentLeft;
		selectimage = [NSString stringWithFormat:@"com_btn_checked"];
		unselectimage = [NSString stringWithFormat:@"com_btn_unCheck"];
		
		[self setImage:[UIImage imageNamed:unselectimage] forState:UIControlStateNormal];
		[self addTarget:self action:@selector(checkBoxClicked) forControlEvents:UIControlEventTouchUpInside];
        
	}
    
    return self;
}

- (id)initWithFrame:(CGRect)frame selectImage:(NSString *)_selectimg FinishedUnselectedImage:(NSString *)unselectedimage
{
	if (self = [super initWithFrame:frame]) {
        
		self.contentHorizontalAlignment  = UIControlContentHorizontalAlignmentLeft;
        
		selectimage = _selectimg;
		unselectimage = unselectedimage;
		
		[self setImage:[UIImage imageNamed:unselectimage] forState:UIControlStateNormal];
		[self addTarget:self action:@selector(checkBoxClicked) forControlEvents:UIControlEventTouchUpInside];
	}
    
	return self;
}

-(void)setTarget:(id)tar fun:(SEL)ff
{
	target = tar;
	fun = ff;
}

- (void)setIsChecked:(BOOL)check
{
	selectimage = [NSString stringWithFormat:@"com_btn_checked"];
	unselectimage = [NSString stringWithFormat:@"com_btn_uncheck"];
	
	isChecked = check;
    
	if (check) {
        
		[self setImage:[UIImage imageNamed:selectimage] forState:UIControlStateNormal];
		
	}
	else {
        
		[self setImage:[UIImage imageNamed:unselectimage] forState:UIControlStateNormal];
	}
}

- (void)checkBoxClicked
{
	if(self.isChecked == NO) {
        
		self.isChecked = YES;
		[self setImage:[UIImage imageNamed:selectimage] forState:UIControlStateNormal];
		
	}
    else {
        
		self.isChecked = NO;
		[self setImage:[UIImage imageNamed:unselectimage] forState:UIControlStateNormal];
		
	}
    
	[target performSelector:fun];
}

- (void)dealloc
{
	selectimage = nil;
	unselectimage = nil;
    [super dealloc];
}



- (void)sendAction:(SEL)action to:(id)newTarget forEvent:(UIEvent *)event
{
    NSLog(@"- (void)sendAction:(SEL)action to:(id)target forEvent:(UIEvent *)event");
    
    if (event.type == UIEventTypeTouches) {
        NSLog(@"UIEventTypeTouches");
        if (self.isChecked) {
            self.isChecked = NO;
        }else
        {
            self.isChecked = YES;
        }
    }
    [super sendAction:action to:newTarget forEvent:event];
}
@end

