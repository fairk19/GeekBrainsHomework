//
//  Man.m
//  DZ6
//
//  Created by Александр on 14.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import "Man.h"

@implementation Man

+ (id) manWithAge:(int)age name:(NSString *)name
{
    return [[Man alloc] initWithAge:age name:name];
}

- (instancetype) initWithAge:(int)age name:(NSString *)name
{
    if (self = [super init]) {
        self.name = name;
        self.age = age;
    }
    return self;
}

- (NSString *) creatureInfo
{
    return [[NSString alloc] initWithFormat: @"Man name: %@, age: %d", self.name, self.age];
}

@end
