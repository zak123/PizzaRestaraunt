//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

-(instancetype)initWithSize:(PizzaSize)pizzaSize topping:(NSArray *)topping {
    if ((self = [super init])) {
    
    }
    return self;
}


- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    
    
    Pizza *outputPizza = nil;
    
    
    if (self.delegate !=nil) {
        
        
        BOOL shouldUpgrade = [self.delegate kitchenShouldUpgradeOrder:self];
        BOOL shouldMakePizza = [self.delegate kitchen:self shouldMakePizzaOfSize:size toppings:toppings];
        
        
        if (shouldMakePizza) {
            if (shouldUpgrade) {
                // make and return a large pizza
                outputPizza = [Pizza pizzaWithSize:PizzaSizeLarge toppings:toppings];
            } else {
                // make and return a <size> pizza
                outputPizza = [Pizza pizzaWithSize:size toppings:toppings];
            }
        }
    }
    
    return outputPizza;
}


@end
