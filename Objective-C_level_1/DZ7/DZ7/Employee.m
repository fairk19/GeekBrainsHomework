//
//  Employee.m
//  DZ7
//
//  Created by Александр on 21.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import "Employee.h"

@implementation Employee

- (instancetype)initWhithValues: (NSUInteger) salary name: (NSString *) name surname: (NSString *) surname
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
    [aCoder encodeObject:[NSNumber numberWithUnsignedInteger:_salary] forKey:@"salary"];
    
}

-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super init];
    if (self) {
        
        _surname = [aDecoder decodeObjectForKey:@"surname"];
        _name = [aDecoder decodeObjectForKey:@"name"];
        _salary = [[aDecoder decodeObjectForKey:@"salary"] unsignedIntegerValue];
        
        [_surname retain];
        [_name retain];
    }
    return self;
}

-(void)dealloc
{
    _name = nil;
    _surname = nil;
    [super dealloc];
}
@end
