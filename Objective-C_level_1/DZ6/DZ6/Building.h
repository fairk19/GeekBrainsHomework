//
//  Building.h
//  DZ6
//
//  Created by Александр on 14.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CreatureProtocol.h"

@interface Building : NSObject <CreatureProtocol>

@property NSString *name;
@property int age;

- (instancetype) init;
- (instancetype)initWithAge: (int) age name: (NSString *) name;

@end
