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

@protocol PSSmallItemUIDelegate;


@interface PSSmallItemUI : UIView

@property(nonatomic, weak) id <PSSmallItemUIDelegate> delegate;

@property(nonatomic, weak) IBOutlet UILabel		*itemTitle;
@property(nonatomic, weak) IBOutlet UILabel		*itemSubTitle;
@property(nonatomic, weak) IBOutlet UILabel		*itemType;
@property(nonatomic, weak) IBOutlet UITextView	*itemDetails;

- (IBAction) infoButonAction:(id)sender;

@end


@protocol PSSmallItemUIDelegate < NSObject >
- (void) performInfoAction:(PSSmallItemUI *) aSmallItem;
@end