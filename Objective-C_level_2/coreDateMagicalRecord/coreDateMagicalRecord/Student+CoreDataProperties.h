//
//  Student+CoreDataProperties.h
//  coreDateMagicalRecord
//
//  Created by Александр on 05.03.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Student.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *course;
@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSSet<Human *> *human;

@end

@interface Student (CoreDataGeneratedAccessors)

- (void)addHumanObject:(Human *)value;
- (void)removeHumanObject:(Human *)value;
- (void)addHuman:(NSSet<Human *> *)values;
- (void)removeHuman:(NSSet<Human *> *)values;

@end

NS_ASSUME_NONNULL_END
