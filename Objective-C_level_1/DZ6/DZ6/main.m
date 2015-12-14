//
//  main.m
//  DZ6
//
//  Created by Александр on 14.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CreatureProtocol.h"
#import "Dog.h"
#include "Man.h"
#include "Woman.h"
#include "Building.h"

id getRandomCreature();

int const cntVar = 3;
int const maxAge = 20;

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        id<CreatureProtocol> myEntity = getRandomCreature();
        NSLog(@"%@", [myEntity creatureInfo]);
    
        Building *building = [[Building alloc] initWithAge:1508 name:@"Red Square"];
        NSLog(@"%@", [building creatureInfo]);
        
    }
    return 0;
}

id getRandomCreature()
{
    int currVar = arc4random() % cntVar;
    
    switch (currVar) {
        case 0:
        {
            return [Dog dogWithAge: arc4random() % maxAge name:@"Шарик"];
        }
        case 1:
        {
            return [Man manWithAge: arc4random() % maxAge name:@"Саша"];
        }
        case 2:
        {
            return [Woman womanWithAge: arc4random() % maxAge name:@"Аня"];
        }
        default:
            return nil;
    }
    
}