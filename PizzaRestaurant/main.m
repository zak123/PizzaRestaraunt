//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        CheeryManager *cheeryManager = [[CheeryManager alloc] init];
        
        
        Kitchen *restaurantKitchen = [[Kitchen alloc] init];
        
        
        restaurantKitchen.delegate = cheeryManager;
        
        Pizza *newPizza = [restaurantKitchen makePizzaWithSize:PizzaSizeLarge toppings:@[@"cheese", @"sauce"]];
        
        if (newPizza == nil) {
            NSLog(@"No pizza made, maybe hire a manager?");
        } else {
            NSLog(@"We made a pizza! %@", newPizza);
        }
        
        
        NoPhishManager *noPhishManager = [NoPhishManager new];
        
        restaurantKitchen.delegate = noPhishManager;
        
        newPizza = [restaurantKitchen makePizzaWithSize:PizzaSizeLarge toppings:@[@"cheese", @"sauce", @"anchovies"]];
        
        if (newPizza == nil) {
            NSLog(@"No pizza made.");
        } else {
            NSLog(@"We made a pizza! %@", newPizza);
        }
    
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
           
            
            [restaurantKitchen makePizzaWithSize:PizzaSizeLarge toppings:@"cheese"];
            
            // And then send some message to the kitchen...
        }

    }
    return 0;
}

