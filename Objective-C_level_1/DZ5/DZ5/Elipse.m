//
//  Elipse.m
//  DZ5
//
//  Created by Александр on 08.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import "Elipse.h"

@implementation Elipse

- (float) length
{
    return M_PI * ( _a + _b );
}

- (float) square
{
    return M_PI * _a * _b;
}

- (void) setA:(float) a
{
    _a = a;
}

- (void) setB: (float) b
{
    _b = b;
}

- (void) description
{
    NSLog(@"Площадь %@ =  %.2f, длина = %.2f", self.className, self.square, self.length);
}

@end
