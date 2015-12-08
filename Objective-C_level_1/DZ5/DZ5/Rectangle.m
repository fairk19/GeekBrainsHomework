//
//  Rectangle.m
//  DZ5
//
//  Created by Александр on 08.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import "Rectangle.h"

@implementation Rectangle

-(float) square
{
    return _width * _height;
}

-(float) perimeter
{
    return 2 * ( _width + _height);
}

-(void) setHeight:(float) h
{
    _height = h;
}

-(void) setWidth:(float) w
{
    _width = w;
}

- (void) description
{
    NSLog(@"Площадь %@ =  %.2f, периметр = %.2f", self.className, self.square, self.perimeter);
}

@end
