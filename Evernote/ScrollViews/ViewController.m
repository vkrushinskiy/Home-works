//
//  ViewController.m
//  Evernote
//
//  Created by Vadim Krushinskiy on 7.12.14.
//  Copyright (c) 2014 Vadim Krushinskiy. All rights reserved.
//


#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIImageView *imageView;


@end

@implementation ViewController




- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (UIView*)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    // Return the view that we want to zoom
    return self.imageView;
}

- (void)scrollViewDidZoom:(UIScrollView *)scrollView {
    // The scroll view has zoomed, so we need to re-center the contents
//    [self centerScrollViewContents];
}

@end
