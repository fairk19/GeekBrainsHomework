//
//  Figure.h
//  DZ5
//
//  Created by Александр on 08.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SIZE_CHAIN 5
#define MIN_RAND_VALUE 5
#define MAX_RAND_VALUE 10

@interface Figure : NSObject
{
    @public
    int width;
    int height;
    Figure* next;
}

- (float) square;
- (void) description;
- (Figure*) createChain;

@end
