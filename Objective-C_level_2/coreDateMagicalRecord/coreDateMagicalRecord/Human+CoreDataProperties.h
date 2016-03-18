//
//  Human+CoreDataProperties.h
//  coreDateMagicalRecord
//
//  Created by Александр on 05.03.16.
//  Copyright © 2016 Alexandr Fedorov. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Human.h"

NS_ASSUME_NONNULL_BEGIN

@interface Human (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *id;
@property (nullable, nonatomic, retain) NSString *sex;
@property (nullable, nonatomic, retain) Teacher *teacher;
@property (nullable, nonatomic, retain) Student *student;

@end

NS_ASSUME_NONNULL_END
