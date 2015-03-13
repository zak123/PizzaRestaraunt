//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Zachary Mallicoat on 3/13/15.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"


@implementation CheeryManager : NSObject

-(BOOL)kitchen:(Pizza *)kitchen shouldMakePizzaOfSize:(Size)size toppings:(NSArray *)toppings {
    return YES;
}
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

@end