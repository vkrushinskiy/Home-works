//
//  DCAppDelegate.h
//  TableViewExample
//
//  Created by Vadim Krushinskiy on 14/11/14.
//  Copyright (c) 2014. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DCViewController.h" //////////////
//#import "AVFoundation/AVFoundation.h"

//@interface DCAppDelegate : UIResponder <UIApplicationDelegate>

@interface DCAppDelegate : NSObject <UIApplicationDelegate> {
   //AVAudioPlayer *audioPlayer1;
    UIWindow *window;
    UIViewController *viewController;
} ///////////////////////


@property (strong, nonatomic) UIWindow *window;

//@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) UIViewController *viewController; /////////////////















@end
