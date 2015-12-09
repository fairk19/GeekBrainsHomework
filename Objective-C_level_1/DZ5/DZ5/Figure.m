//
//  Figure.m
//  DZ5
//
//  Created by Александр on 08.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import "Figure.h"

@implementation Figure

- (Figure*) createChain
{
    Figure *figureA = [[Figure alloc] init];
    figureA->next = nil;

    Figure *figureB = [[Figure alloc] init];
    figureA->next = figureB;
    
    Figure *figureC = [[Figure alloc] init];
    figureB->next = figureC;
    
    Figure *figureD = [[Figure alloc] init];
    figureC->next = figureD;
    
    Figure *figureE = [[Figure alloc] init];
    figureD->next = figureE;
    
    return figureA;
    
}
@end
