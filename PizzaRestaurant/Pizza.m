//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Zachary Mallicoat on 3/12/15.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza


// + Class Method
// - Instance Method


+(Pizza *)largePepperoni {
    return [[Pizza alloc] initWithSize:PizzaSizeLarge topping:@[@"pepperoni"]];
}

+(Pizza *)pizzaWithSize:(PizzaSize)pizzaSize toppings:(NSArray *)toppings {
    return [[Pizza alloc] initWithSize:pizzaSize topping:toppings];
}


-(instancetype) initWithSize:(PizzaSize)pizzaSize topping:(NSArray*)topping {
    self = [super init];
    
    if (self) {
        self.pizzaSize = pizzaSize;
        self.pizzaToppings = topping;
    }
    
    
    return self;
}



@end
