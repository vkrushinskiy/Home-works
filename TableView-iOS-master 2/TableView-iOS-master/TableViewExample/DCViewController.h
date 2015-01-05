//
//  DCViewController.h
//  TableViewExample
//
//  Created by Vadim Krushinskiy on 14/11/14.
//  Copyright (c) 2014. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <AVFoundation/AVFoundation.h>
//#import <AudioToolbox/AudioToolbox.h>

@interface DCViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    //SystemSoundID *PlaySoundID;
    NSTimer *timer;
    UIImageView *splashImageView; UIViewController *viewController; }


//- (IBAction)PlayAudioButton:(id)sender;


@property (copy, nonatomic) NSArray *countries;
@property (copy, nonatomic) NSArray *countriesContinent;
@property (copy, nonatomic) NSArray *flags;

@property(nonatomic,retain) NSTimer *timer; //////
@property(nonatomic,retain) UIImageView *splashImageView; //////
@property(nonatomic,retain) UIViewController *viewController; ///////


@end
