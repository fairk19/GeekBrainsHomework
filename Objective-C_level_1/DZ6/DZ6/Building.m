//
//  Building.m
//  DZ6
//
//  Created by Александр on 14.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import "Building.h"

@implementation Building 

- (instancetype) init
{
    if (self = [super init]) {
        return self;
    }
    return nil;
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
    NSCalendar *gregorian = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    NSInteger year = [gregorian component:NSCalendarUnitYear fromDate:NSDate.date];
    
    return [[NSString alloc] initWithFormat: @"Building name: %@, age: %ld", self.name, year - self.age];
}
@end
