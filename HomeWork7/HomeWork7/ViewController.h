//
//  ViewController.h
//  HomeWork7
//
//  Created by Vadim Krushinskiy on 30.11.14.
//  Copyright (c) 2014 Vadim Krushinskiy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *scroll;

@property (strong, nonatomic) IBOutlet UIButton *myButton;

-(IBAction)changeValue;


@property (strong, nonatomic) IBOutlet UILabel *myLabelButton;

@property (strong, nonatomic) IBOutlet UILabel *myLabelButton2;

@property (strong, nonatomic) IBOutlet UISegmentedControl *mySegmentedControl;

- (IBAction)mySegmentedControl:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *myLabelSegmentedControl;

@property (strong, nonatomic) IBOutlet UITextField *myTextField;

- (IBAction)myTextFieldChanged:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *myLabelTextField;

- (IBAction)mySwitch:(id)sender;

@property (strong, nonatomic) UIAlertView *myAlert;


@property (strong, nonatomic) IBOutlet UIButton *MyButtonActivity;

- (IBAction)MyButtonActivityClick;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *myActivityIndicator;

@property (strong, nonatomic) IBOutlet UIStepper *myStepper;

- (IBAction)myStepperChange;

@property (strong, nonatomic) IBOutlet UILabel *myStepperLabel;

@property (strong, nonatomic) IBOutlet UIButton *myPictureButton;

- (IBAction)myPictureButtonClick;

@property (strong, nonatomic) IBOutlet UIImageView *myImage;

@end
