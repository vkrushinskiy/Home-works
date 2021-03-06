//
//  GHCar.m
//  VadimKrushinskiy
//
//  Created by Admin on 02.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "GHCar.h"


@implementation GHCar

-(instancetype) initWithEngineCapacity:(float)capacity andHorsePower:(int)horsePower {
    self = [super init];
    if (!self) {
        return nil;
    }
    
    GHEngine *engine = [[GHEngine alloc] init];
    engine.capacity = capacity;
    engine.horsePower = horsePower;
    
    self.engine = engine;
    
    return self;
}

-(void) printCarIformation {
    NSLog(@"%@ (%0.1f) - %i h/p, max. speed - %0.0f", self.mark, self.engine.capacity, self.engine.horsePower, self.topSpeed);
}


-(Boolean) isFasterThanCar:(GHCar *)carToCompare {
    if (self.topSpeed > carToCompare.topSpeed) {
        return true;
    } else {
        return false;
    }
}


@end
