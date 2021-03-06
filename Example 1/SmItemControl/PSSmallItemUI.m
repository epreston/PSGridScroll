//
//  PSSmallItemUI.m
//  PSHGridScroll - Example 1
//
//  Created by Ed Preston on 7/9/10.
//  Copyright 2010 Preston Software. All rights reserved.
//
//
// A small view, loaded from a nib, with a few sub views.  Used as an example / template.
//

#import "PSSmallItemUI.h"


@implementation PSSmallItemUI


- (IBAction) infoButonAction:(id)sender 
{	
	if (self.delegate) {
		[self.delegate performInfoAction:self];
	}
}

- (void) configureDetaults
{
	// Initialize ivars directly.  As a rule, it's best to avoid invoking accessors from an -init...
	// method, since they may wrongly expect the instance to be fully formed.
}

#pragma mark - UIView

- (instancetype) initWithFrame:(CGRect)newFrame 
{
    self = [super initWithFrame:newFrame];
    if (self) {
		[self configureDetaults];
    }
    return self;
}

- (void) awakeFromNib 
{
	[super awakeFromNib];
    [self configureDetaults];
}


@end
