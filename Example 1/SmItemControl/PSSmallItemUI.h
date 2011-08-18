//
//  PSSmallItemUI.h
//  PSHGridScroll - Example 1
//
//  Created by Ed Preston on 7/9/10.
//  Copyright 2010 Preston Software. All rights reserved.
//
//
// A small view, loaded from a nib, with a few sub views.  Used as an example / template.
//


#import <UIKit/UIKit.h>

@class PSSmallItemUI;

@protocol PSSmallItemUIDelegate < NSObject >
- (void) performInfoAction: (PSSmallItemUI *) aSmallItem;
@end



@interface PSSmallItemUI : UIView {
	
	
@private	
	UILabel						*_itemTitle;
	UILabel						*_itemSubTitle;
	UILabel						*_itemType;
	UITextView					*_itemDetails;
	id < PSSmallItemUIDelegate > _delegate;
}

@property(nonatomic, retain) id delegate;

@property(nonatomic, assign) IBOutlet UILabel		*itemTitle;
@property(nonatomic, assign) IBOutlet UILabel		*itemSubTitle;
@property(nonatomic, assign) IBOutlet UILabel		*itemType;
@property(nonatomic, assign) IBOutlet UITextView	*itemDetails;

- (IBAction) infoButonAction:(id)sender;

@end
