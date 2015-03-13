//
//  NoPhishManager.m
//  PizzaRestaurant
//
//  Created by Zachary Mallicoat on 3/13/15.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "NoPhishManager.h"

@implementation NoPhishManager : NSObject

-(BOOL)kitchen:(Pizza *)kitchen shouldMakePizzaOfSize:(Size)size toppings:(NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"]) {
        NSLog(@"Eww no anchovies!");
        return NO;
    }
    else {
        return YES;
    }
}



-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}


@end