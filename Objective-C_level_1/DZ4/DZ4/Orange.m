//
//  Orange.m
//  DZ4
//
//  Created by Александр on 07.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import "Orange.h"

@implementation Orange

-(void) orangeVolume
{
    float orangeVolume = (4.0 / 3.0) * M_PI * self->radius;
    
    NSLog(@"V = %.2f", orangeVolume);
}
@end
