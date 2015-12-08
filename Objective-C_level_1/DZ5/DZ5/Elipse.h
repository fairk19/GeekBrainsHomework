//
//  Elipse.h
//  DZ5
//
//  Created by Александр on 08.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import "Figure.h"

@interface Elipse : Figure
{
    float _a, _b;
}
- (float) length;
- (void) setA: (float) a;
- (void) setB: (float) b;

@end
