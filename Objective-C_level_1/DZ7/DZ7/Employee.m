//
//  Employee.m
//  DZ7
//
//  Created by Александр on 21.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import "Employee.h"

@implementation Employee

- (instancetype)initWhithValues: (unsigned) salary name: (NSString *) name surname: (NSString *) surname
{
    self = [super init];
    
    if (self) {
        _salary = salary;
        _name = name;
        _surname = surname;
    }
    
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeObject:_name forKey:@"name"];
    [aCoder encodeObject:_surname forKey:@"surname"];
    
    NSNumber *salaryObj = [[NSNumber alloc] initWithUnsignedInt:_salary];
    [aCoder encodeObject:salaryObj forKey:@"salary"];
    [salaryObj release];
    
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        
        _surname = [aDecoder decodeObjectForKey:@"surname"];
        _name = [aDecoder decodeObjectForKey:@"name"];
        
        NSNumber *salaryObj = [[NSNumber alloc] initWithUnsignedInt:_salary];
        salaryObj = [aDecoder decodeObjectForKey:@"salary"];
        _salary = (unsigned)[salaryObj integerValue];
        [salaryObj release];
        
        [_name retain];
        [_surname retain];
        
    }
    return self;
}

@end
