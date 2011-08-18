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
//

#import <UIKit/UIKit.h>


@interface PSGridScrollView : UIScrollView {

@private
	int						_itemBorder;
	int						_itemWidth;
	int						_itemHeight;
	NSMutableArray			*_gridViews;
}

@property (nonatomic, copy) NSMutableArray	*gridViews;
@property (nonatomic) int					itemWidth;
@property (nonatomic) int					itemHeight;
@property (nonatomic) int					itemBorder;

- (void)addViewToGrid:(UIView *)newView;

@end
