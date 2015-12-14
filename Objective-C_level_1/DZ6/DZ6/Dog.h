//
//  Dog.h
//  DZ6
//
//  Created by Александр on 14.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import "Creature.h"
#import "CreatureProtocol.h"

@interface Dog : Creature <CreatureProtocol>

- (instancetype)initWithAge: (int) age name: (NSString *) name;
+ (id) dogWithAge: (int)age name:(NSString *) name;

@end
