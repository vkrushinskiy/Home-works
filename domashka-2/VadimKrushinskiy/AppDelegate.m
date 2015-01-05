//
//  AppDelegate.m
//  VadimKrushinskiy
//
//  Created by Admin on 02.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "GHCar.h"

#import "AppDelegate.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    GHCar *car1 = [[GHCar alloc] initWithEngineCapacity:2.5 andHorsePower:192];
    car1.topSpeed = 230.0;
    car1.mark = @"BMW";
    [car1 printCarIformation];
    
    GHCar *AnotherCar4 = [[GHCar alloc] initWithEngineCapacity:2.4 andHorsePower:180];
    AnotherCar4.topSpeed = 225.0;
    AnotherCar4.mark = @"Audi";
    [AnotherCar4 printCarIformation];
    
    if ([car1 isFasterThanCar:AnotherCar4]) {
        NSLog(@"%@ is faster. speed - %0.0f", car1.mark, car1.topSpeed);
    } else {
        NSLog(@"%@ is faster. speed - %0.0f", AnotherCar4.mark, AnotherCar4.topSpeed);
    }
    
    
    return YES;
}

@end
