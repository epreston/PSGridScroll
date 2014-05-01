//
//  PSGridScrollView.h
//
//  Created by Ed Preston on 7/8/10.
//  Copyright Preston Software 2010. All rights reserved.
//
//
//  Attempts to show the maximum number of items per row, creates spacing between 
//  the items to fill the scrollview widtch evenly.
//

#import <UIKit/UIKit.h>


@interface PSGridScrollView : UIScrollView 

@property (nonatomic, copy) NSMutableArray	*gridViews;
@property (nonatomic, assign) CGFloat		itemWidth;
@property (nonatomic, assign) CGFloat		itemHeight;
@property (nonatomic, assign) CGFloat		itemBorder;

- (void) addViewToGrid:(UIView *)newView;

@end
