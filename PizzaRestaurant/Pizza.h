//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Zachary Mallicoat on 3/12/15.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, PizzaSize) {
    PizzaSizeSmall,
    PizzaSizeMedium,
    PizzaSizeLarge
};


@interface Pizza : NSObject





@property (nonatomic, strong) NSArray *pizzaToppings;
@property (nonatomic, assign) PizzaSize pizzaSize;

-(instancetype) initWithSize:(PizzaSize)pizzaSize topping:(NSArray*)topping;


+(Pizza *)pizzaWithSize:(PizzaSize)pizzaSize toppings:(NSArray *)toppings;





@end
