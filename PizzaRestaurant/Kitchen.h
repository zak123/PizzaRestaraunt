//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "CheeryManager.h"
#import "NoPhishManager.h"
#import "RestaurantManager.h"


@interface Kitchen : NSObject

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;

-(instancetype) initWithSize:(PizzaSize)pizzaSize topping:(NSArray*)topping;

@property (nonatomic, strong) id<RestaurantManager>delegate;

@end
