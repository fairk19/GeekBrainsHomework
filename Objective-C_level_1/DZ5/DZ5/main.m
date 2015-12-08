//
//  main.m
//  DZ5
//
//  Created by Александр on 08.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Circle.h"
#import "Rectangle.h"
#import "Elipse.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Circle *circle = [[Circle alloc] init];
        [circle setRadius: 5];
        [circle description];
        
        Rectangle *rectangle = [[Rectangle alloc] init];
        [rectangle setHeight: 10];
        [rectangle setWidth: 5];
        [rectangle description];
        
        Elipse *elipse = [[Elipse alloc] init];
        [elipse setA: 3];
        [elipse setB: 5];
        [elipse description];
    }
    return 0;
}
