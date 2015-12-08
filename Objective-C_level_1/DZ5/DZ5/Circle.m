//
//  Circle.m
//  DZ5
//
//  Created by Александр on 08.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import "Circle.h"

@implementation Circle

- (float) square
{
    return M_PI * _radius * _radius;
}

- (float) length
{
    return 2 * M_PI * _radius;
}

- (void) setRadius: (float) r
{
    _radius = r;
}

- (void) description
{
    NSLog(@"Площадь %@ =  %.2f, длина = %.2f", self.className, self.square, self.length);
}
@end
