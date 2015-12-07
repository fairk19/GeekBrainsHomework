//
//  main.m
//  DZ4
//
//  Created by Александр on 07.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Orange.h"

typedef struct
{
    NSString *name;
    unsigned productionYear;
    unsigned horsePower;
} Car;

int main(int argc, const char * argv[]) {
    
//    Car honda;
//    honda.name = @"Honda";
//    honda.productionYear = 212;
//    honda.horsePower = 132;
    
    Car honda = { @"Honda", 212, 132 };
    Car *pointHonda = &honda;
    
    for (int i = 0; i < 5; i++)
        ++pointHonda->horsePower;
    
    NSLog(@"Теперь количество лошадиных %d", pointHonda->horsePower);
    
    Orange *someOrange = [[Orange alloc] init];
    someOrange->color = @"Orange";
    someOrange->taste = @"Sweet";
    someOrange->radius = 95;
    
    NSLog(@"Orange has %@ color and %@ tast", someOrange->color, someOrange->taste);
    
    [someOrange orangeVolume];
    
    return 0;
}
