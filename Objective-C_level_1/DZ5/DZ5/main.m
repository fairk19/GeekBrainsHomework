//
//  main.m
//  DZ5
//
//  Created by Александр on 08.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Figure.h"
#import "Circle.h"
#import "Rectangle.h"
#import "Elipse.h"


int myRandom (int minValue, int maxValue);
Figure* creatChain();
BOOL deletFigure (Figure* start, int index);

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
        
        Figure *startList = creatChain();
        deletFigure(startList, 0);
        
    }
    return 0;
}

int myRandom (int minValue, int maxValue)
{
    return rand() % (maxValue + minValue);
}

Figure* creatChain()
{
    Figure *currentFigure = [[Figure alloc] init];
    currentFigure->height = myRandom(MIN_RAND_VALUE, MAX_RAND_VALUE);
    currentFigure->width = myRandom(MIN_RAND_VALUE, MAX_RAND_VALUE);
    currentFigure->next = nil;
    
    Figure *start = [[Figure alloc] init];
    start = currentFigure;
    
    for (int i = 0; i < SIZE_CHAIN; i++) {
        
        Figure *nextFigure = [[Figure alloc] init];
        nextFigure->height = myRandom(MIN_RAND_VALUE, MAX_RAND_VALUE);
        nextFigure->width = myRandom(MIN_RAND_VALUE, MAX_RAND_VALUE);
        nextFigure->next = nil;
        
        currentFigure->next = nextFigure;
        
        currentFigure = nextFigure;
        
    }
    
    Figure *iterFigure = [[Figure alloc] init];
    iterFigure = start;
    
    while (iterFigure->next != nil)
    {
        NSLog(@"Figure width = %d, height = %d", iterFigure->width , iterFigure->height);
        iterFigure = iterFigure->next;
    };
    NSLog(@"/////////////////////////////////////");
    return start;
}

BOOL deletFigure (Figure* start, int index)
{
    Figure *iterFigure = [[Figure alloc] init];
    iterFigure = start;

    int i = 0;
    
    while (i++ < index - 1 && iterFigure->next != nil) {
        iterFigure = iterFigure->next;
    }
    
    if (iterFigure->next == nil) {
        NSLog(@"Элемента с таким номером нет в списке.");
        return NO;
    }
    else
    {
        Figure *temp = [[Figure alloc] init];
        temp = iterFigure->next;
        iterFigure->next = nil;
        iterFigure->next = temp->next;
        temp->next = nil;
    }
    
    iterFigure = start;
    while (iterFigure->next != nil)
    {
        NSLog(@"Figure width = %d, height = %d", iterFigure->width , iterFigure->height);
        iterFigure = iterFigure->next;
    };
    
    return YES;
}