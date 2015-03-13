//
//  RestaurantManager.h
//  PizzaRestaurant
//
//  Created by Zachary Mallicoat on 3/13/15.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Kitchen;

@protocol RestaurantManager <NSObject>

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(Size)size toppings:(NSArray *)toppings;
-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

@optional
-(void)kitchenDidMakePizza:(Pizza *)pizza;


@end



//@interface CrappyManager : NSObject<RestaurantManager>
//
//
//
//
//
//@end
//@implementation CrappyManager
//
//-(BOOL)kitchen:(Pizza *)kitchen shouldMakePizzaOfSize:(Size)size toppings:(NSArray *)toppings {
//    
//    
//    return NO;
//}
//
//
//
//-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
//    return NO;
//}
//
//@end
