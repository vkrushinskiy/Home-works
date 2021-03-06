//
//  GHCar.h
//  VadimKrushinskiy
//
//  Created by Admin on 02.11.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GHEngine.h"

@interface GHCar : NSObject

@property NSString *mark; // Марка машины пример - BMW.
@property float topSpeed; // Макс. скорость пример - 230 км/час
@property GHEngine *engine; // Двигатель

-(GHCar *) initWithEngineCapacity:(float)capacity andHorsePower:(int)horsePower;

-(void) printCarIformation; // выводит инфу о машине пример - "BMW (2.5) - 192 h/p, max. speed - 230"
-(Boolean) isFasterThanCar:(GHCar *)carToCompare; //сравнивает макс. скорость машин

@end
