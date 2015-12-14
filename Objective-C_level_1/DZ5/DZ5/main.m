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

typedef enum {
    circle,
    rectangle,
    elipse
} TypeFigure;

int myRandom (int minValue, int maxValue);
Figure* creatChain(int sizelist);
BOOL deleteNth (Figure** start, int n);
void pushBack (Figure* start, Figure* figure);
void printList (Figure* start);
Figure* getLast (Figure* start);
void pop (Figure** start);
void deleteNext(Figure** curr);
void insertNext(Figure** curr, Figure* insert);

//11
Figure* createAnyChain(int sizelist);
Figure* createRandFigure();
void printRandFiguresList(Figure* start);
void swap(Figure** curr, Figure** next);
void bubble_sort(Figure** start);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //1
//        Circle *circle = [[Circle alloc] init];
//        [circle setRadius: 5];
//        [circle description];
//
//        Rectangle *rectangle = [[Rectangle alloc] init];
//        [rectangle setHeight: 10];
//        [rectangle setWidth: 5];
//        [rectangle description];
//        
//        Elipse *elipse = [[Elipse alloc] init];
//        [elipse setA: 3];
//        [elipse setB: 5];
//        [elipse description];
     
        //5
//        Figure *startList = creatChain(5);
//        printList(startList);
//        pop(&startList);
//        
//        Figure *newFigure = [[Figure alloc] init];
//        newFigure->height = myRandom(MIN_RAND_VALUE, MAX_RAND_VALUE);
//        newFigure->width = myRandom(MIN_RAND_VALUE, MAX_RAND_VALUE);
//        newFigure->next = nil;
//        
//        pushBack(startList, newFigure);
//        deleteNth(&startList, 3);
//        printList(startList);
        
        //11
        Figure *startRandList = createAnyChain(5);
        printRandFiguresList(startRandList);
        
        swap(&startRandList, &startRandList->next);
        
        printRandFiguresList(startRandList);
        
        
    }
    return 0;
}

int myRandom (int minValue, int maxValue)
{
    return rand() % (maxValue + minValue);
}

Figure* creatChain(int sizeList)
{
    Figure *start = [[Figure alloc] init];
    start->height = myRandom(MIN_RAND_VALUE, MAX_RAND_VALUE);
    start->width = myRandom(MIN_RAND_VALUE, MAX_RAND_VALUE);
    start->next = nil;
    
    Figure *curr = [[Figure alloc] init];
    curr = start;
    
    for (int i = 0; i < sizeList - 1; i++) {
        
        Figure *next = [[Figure alloc] init];
        next->height = myRandom(MIN_RAND_VALUE, MAX_RAND_VALUE);
        next->width = myRandom(MIN_RAND_VALUE, MAX_RAND_VALUE);
        next->next = nil;
        
        curr->next = next;
        curr = next;
        
    }
    
    return start;
}

void printList (Figure* start)
{
    while (start) {
        NSLog(@"Figure width = %d, height = %d", start->width , start->height);
        start = start->next;
    }
    NSLog(@"--------------------------------------------------------------");

}

Figure* getLast (Figure* start)
{
    if (!start) {
        return nil;
    }
    
    while (start->next) {
        start = start->next;
    }
    return start;
}

void pop (Figure** start)
{
    Figure *tmp = [[Figure alloc] init];
    tmp = (*start);
    (*start) = tmp->next;
}

BOOL deleteNth (Figure** start, int n)
{
    Figure *saveStart =  [[Figure alloc] init];
    saveStart = (*start);
    
    if (n == 0) {
        
        pop(start);
        return YES;
        
    } else {
        
        while ((*start) && --n > 0) {
            (*start) = (*start)->next;
        }
        
        if (!(*start) || !(*start)->next) {
            return NO;
        }
        
        Figure *tmp = [[Figure alloc] init];
        tmp = (*start)->next;
        (*start)->next = tmp->next;
        
        (*start) = saveStart;
        return YES;
    }
}

void pushBack (Figure* start, Figure* figure)
{
    Figure *lastFigure = [[Figure alloc] init];
    lastFigure = getLast(start);
    lastFigure->next = figure;
}

Figure* createRandFigure()
{
    TypeFigure typeFigure = rand() % (3 + 1);
    Figure* randFigure = [[Figure alloc] init];
    
    switch (typeFigure) {
        case circle:
        {
            Circle *circle = [[Circle alloc] init];
            [circle setRadius: myRandom(MIN_RAND_VALUE , MAX_RAND_VALUE)];
            randFigure = circle;
            break;
        }
        case rectangle:
        {
            Rectangle *rectangle = [[Rectangle alloc] init];
            [rectangle setHeight: myRandom(MIN_RAND_VALUE , MAX_RAND_VALUE)];
            [rectangle setWidth: myRandom(MIN_RAND_VALUE , MAX_RAND_VALUE)];
            randFigure = rectangle;
            break;
        }
        case elipse:
        {
            Elipse *elipse = [[Elipse alloc] init];
            [elipse setA: myRandom(MIN_RAND_VALUE , MAX_RAND_VALUE)];
            [elipse setB: myRandom(MIN_RAND_VALUE , MAX_RAND_VALUE)];
            randFigure = elipse;
            break;
        }
            
        default:
            break;
    }
    
    return randFigure;
}

Figure* createAnyChain(int sizelist)
{
    Figure *start = [[Figure alloc] init];
    start = createRandFigure();
    
    Figure *curr = [[Figure alloc] init];
    curr = start;
    
    for (int i = 0; i < sizelist; i++) {
        
        Figure *next = [[Figure alloc] init];
        next = createRandFigure();
        
        curr->next = next;
        curr = next;
        
    }
    
    return start;
}

void printRandFiguresList(Figure* start)
{
    while (start) {
        [start description];
        start = start->next;
    }
    NSLog(@"--------------------------------------------------------------");
}

void deleteNext(Figure** curr)
{
    Figure *tmp = [[Figure alloc] init];
    tmp = (*curr)->next;
    (*curr) = tmp->next;
}

void insertNext(Figure** curr, Figure* insert)
{
    Figure *tmp = [[Figure alloc] init];
    tmp = (*curr)->next;
    (*curr)->next = insert;
    insert->next = tmp->next;
}

void swap(Figure** curr, Figure** next)
{
    insertNext(next, *curr);
    deleteNext(curr);
}






