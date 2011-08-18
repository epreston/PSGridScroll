//
//  PSHGridScrollViewController.h
//  PSHGridScroll - Example 1
//
//  Created by Ed Preston on 7/8/10.
//  Copyright Preston Software 2010. All rights reserved.
//


#import <UIKit/UIKit.h>

#import "PSSmallItemUI.h"

@class PSGridScrollView;


@interface PSHGridScrollViewController : UIViewController {

@private
	PSGridScrollView *_scrollView;
}

@property(nonatomic, assign) IBOutlet PSGridScrollView *scrollView;

- (UIButton *) newButton:(int)buttonNumber;
- (IBAction) loadNewArray:(id)sender;
- (IBAction) loadNewItem:(id)sender;
- (IBAction) sliderAction:(UISlider*)sender;

@end

