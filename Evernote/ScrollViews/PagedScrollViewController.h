//
//  PagedScrollViewController.h
//  Evernote
//
//  Created by Vadim Krushinskiy on 7.12.14.
//  Copyright (c) 2014 Vadim Krushinskiy. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface PagedScrollViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UIPageControl *pageControl;

@end
