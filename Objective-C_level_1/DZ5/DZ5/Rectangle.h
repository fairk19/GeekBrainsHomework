//
//  Rectangle.h
//  DZ5
//
//  Created by Александр on 08.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import "Figure.h"

@interface Rectangle : Figure
{
    float _height, _width;
}

- (float) perimeter;
- (void) setHeight: (float) h;
- (void) setWidth: (float) w;

@end
