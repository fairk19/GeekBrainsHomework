//
//  Man.h
//  DZ6
//
//  Created by Александр on 14.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import "Human.h"
#import "CreatureProtocol.h"

@interface Man : Human <CreatureProtocol>

- (instancetype)initWithAge: (int) age name: (NSString *) name;
+ (id) manWithAge: (int)age name:(NSString *) name;

@end
