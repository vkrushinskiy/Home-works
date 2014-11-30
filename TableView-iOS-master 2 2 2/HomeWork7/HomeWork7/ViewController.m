//
//  ViewController.m
//  HomeWork7
//
//  Created by Vadim Krushinskiy on 30.11.14.
//  Copyright (c) 2014 Vadim Krushinskiy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIAlertViewDelegate>

@end

@implementation ViewController

@synthesize scroll;
@synthesize myButton;
@synthesize myLabelButton;
@synthesize myLabelButton2;
@synthesize mySegmentedControl;
@synthesize myLabelSegmentedControl;
@synthesize myTextField;
@synthesize myLabelTextField;
@synthesize myAlert;
@synthesize MyButtonActivity;
@synthesize myActivityIndicator;
@synthesize myStepper;
@synthesize myStepperLabel;
@synthesize myPictureButton;
@synthesize myImage;

bool textYesOrNo = YES;
int myStepperValue;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    scroll.contentSize = CGSizeMake(320.0f, 800.0f);
    
    myStepper.value = 25;
    myStepperLabel.text = @"25";
    
}

- (IBAction)changeValue{
    if (textYesOrNo == YES) {
        myLabelButton.text = @"Good";
        textYesOrNo = NO;
    } else{
        myLabelButton.text = @"Super goood";
        textYesOrNo = YES;
    }
}


- (IBAction)changeValue2{
    if (textYesOrNo == YES) {
        myLabelButton2.text = @"More";
        textYesOrNo = NO;
    } else{
        myLabelButton2.text = @"Less";
        textYesOrNo = YES;
    }
}

- (IBAction)mySegmentedControl:(id)sender {
    if (mySegmentedControl.selectedSegmentIndex == 0) {
        myLabelSegmentedControl.text = @"1";}
    else if (mySegmentedControl.selectedSegmentIndex == 1){
        myLabelSegmentedControl.text = @"2";
    }
}


- (IBAction)myTextFieldChanged:(id)sender {
    [myTextField addTarget:self action:@selector(textFieldShouldEndEditing:) forControlEvents:UIControlEventEditingDidEnd];
    myLabelTextField.text = myTextField.text;
}

- (IBAction)mySwitch:(id)sender {
    UIAlertView *myAlert = [[UIAlertView alloc] initWithTitle:@"Be carefull !" message:@"GeekHub-iOS 4" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [myAlert show];
}

- (IBAction)MyButtonActivityClick {
    [myActivityIndicator startAnimating];
}

- (IBAction)myStepperChange {
    myStepperValue = myStepper.value;
    NSString *stepperString = [@(myStepperValue) stringValue];
    myStepperLabel.text = stepperString;
    
    
}


- (IBAction)myPictureButtonClick {
    myImage.image = [UIImage imageNamed:@"ukraine-press2.jpeg"];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
