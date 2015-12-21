//
//  Employee.m
//  DZ7
//
//  Created by Александр on 21.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import "Employee.h"

@implementation Employee

- (instancetype)initWhithValues: (unsigned) slary name: (NSString *) name surname: (NSString *) surname
{
    self = [super init];
    
    if (self) {
        self.salary = slary;
        self.name = name;
        self.surname = surname;
    }
    
    return self;
}

@end
