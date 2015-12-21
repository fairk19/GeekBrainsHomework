//
//  Employee.h
//  DZ7
//
//  Created by Александр on 21.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property (nonatomic, readwrite) unsigned salary;
@property (nonatomic, readwrite, assign) NSString *name;
@property (nonatomic, readwrite, assign) NSString *surname;

- (instancetype)initWhithValues: (unsigned) slary name: (NSString *) name surname: (NSString *) surname;

@end
