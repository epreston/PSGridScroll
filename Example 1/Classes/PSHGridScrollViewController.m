//
//  PSHGridScrollViewController.m
//  PSHGridScroll - Example 1
//
//  Created by Ed Preston on 7/8/10.
//  Copyright Preston Software 2010. All rights reserved.
//


#import "PSHGridScrollViewController.h"

#import "PSGridScrollView.h"
#import "PSSmallItemUI.h"


#define ITEM_WIDTH 172
#define ITEM_HEIGHT 197
#define ITEM_BORDER 10


@interface PSHGridScrollViewController ()
{
@private
    PSGridScrollView *scrollView_;
}
@end


@implementation PSHGridScrollViewController



#pragma mark - Property Accessors

@synthesize scrollView = scrollView_;


#pragma mark - Support Code

- (UIButton *) newButton:(int)buttonNumber 
{
	UIButton *newButton = [[UIButton buttonWithType:UIButtonTypeRoundedRect] retain];
	newButton.frame = CGRectMake(0, 0, 200, 200);
	
	// Even / Odd
	if (  ! (buttonNumber & 0x01) ) {  // This line is not clear but fast.
		[newButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
		
	} else {
		[newButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
	}
	
	newButton.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    newButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
	[newButton setTitle:@"New Button" forState:UIControlStateNormal];
	return newButton;
}


#pragma mark - Actions

-(IBAction) loadNewArray:(id)sender 
{
	NSMutableArray *views = [[NSMutableArray alloc] init];
	
	NSArray *nibViews = nil;
	
	// Create some buttons to test
	for (int i = 0; i < 6; ++i) {
        nibViews = [[NSBundle mainBundle] loadNibNamed:@"PSSmallItemUI" owner:self options:nil];
		
		[views addObject:[self newButton:i]];
		[views addObject:nibViews[0]];
	}
	
	// Add array to grid
	self.scrollView.gridViews = views;
	
	[views release];
}

-(IBAction) loadNewItem:(id)sender 
{
    NSArray *nibViews = nil;
    nibViews = [[NSBundle mainBundle] loadNibNamed:@"PSSmallItemUI" owner:self options:nil];
    [self.scrollView addViewToGrid:nibViews[0] ];
}

- (IBAction) sliderAction:(UISlider*)sender 
{
	self.scrollView.itemWidth = (int)sender.value;
	self.scrollView.itemHeight = (int)sender.value;
}


#pragma mark - View Creation and Initializer

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void) viewDidLoad 
{
    [super viewDidLoad];
	
	// Set the item width and height
	self.scrollView.itemWidth = ITEM_WIDTH;
	self.scrollView.itemHeight = ITEM_HEIGHT;
	self.scrollView.itemBorder = ITEM_BORDER;
	
	NSArray *nibViews = nil;
    
	// Create some buttons to test
	for (int i = 0; i < 6; ++i) {
        
        nibViews = [[NSBundle mainBundle] loadNibNamed:@"PSSmallItemUI" owner:self options:nil];
		
		// Add elements one by one
		[self.scrollView addViewToGrid:nibViews[0] ];
		
		// Add a button
		[self.scrollView addViewToGrid:[self newButton:i]];
	}
}

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation 
{
    // Override to allow orientations other than the default portrait orientation.
    return YES;
}


#pragma mark - Resource Management

- (void) didReceiveMemoryWarning 
{
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void) viewDidUnload 
{
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

- (void) dealloc 
{
    [super dealloc];
}

@end
