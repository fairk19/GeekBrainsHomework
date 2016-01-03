//
//  main.m
//  DZ7
//
//  Created by Александр on 21.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

unsigned const sizeArray = 10;
unsigned const minSalary = 1000;

#define FILE_NAME @"MyArhive.my"

void saveArrayToFile(NSArray* arrayToSave) {
    NSData* date = [NSKeyedArchiver archivedDataWithRootObject:arrayToSave];
    [date writeToFile:FILE_NAME atomically:NO];
}
NSMutableArray* loadEmployees() {
    NSData* date = [NSData dataWithContentsOfFile:FILE_NAME];    
    if (!date) {
        return nil;
    }
    NSMutableArray* array = [NSKeyedUnarchiver unarchiveObjectWithData:date];
    return array; 
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *namesArray = [ NSArray arrayWithObjects: @"John", @"Tim", @"Ted", @"Aaron", @"Steven", nil ];
        NSArray *surnamesArray = [ NSArray arrayWithObjects: @"Smith", @"Dow", @"Isaacson", @"Pennyworth", @"Jenkins", nil];
        NSMutableArray *employees = [[[NSMutableArray alloc] init] autorelease];
        
        for (int i = 0; i < sizeArray; i++) {
            
            Employee *employee = [[Employee alloc] initWhithValues:(arc4random() % minSalary + 1) + minSalary name:[namesArray objectAtIndex:arc4random() % [namesArray count]] surname:[surnamesArray objectAtIndex:arc4random() % [surnamesArray count]]];
            
            [employees addObject: employee];
            [employee release];
        }
        
        for (Employee *employe in employees) {
            NSLog(@"%@ %@'s salary is $%lu", employe.name, employe.surname, (unsigned long)employe.salary );
        }
        
        NSMutableArray *empoyeesEvenSalary = [[[NSMutableArray alloc] initWithArray:employees] autorelease];
        
        NSMutableArray *discardedEmpoyees = [[[NSMutableArray alloc] init] autorelease];
        
        for (Employee *employe in employees) {
            if (employe.salary % 2) {
                [discardedEmpoyees addObject:employe];
            }
        }
        
        [empoyeesEvenSalary removeObjectsInArray:discardedEmpoyees];
        [employees removeObjectsInArray:discardedEmpoyees];
        
        NSLog(@"------------------------------");
        
        for (Employee *employe in employees) {
            NSLog(@"%@ %@'s salary is $%lu", employe.name, employe.surname, (unsigned long)employe.salary );
        }
        
        saveArrayToFile(employees);
        employees = nil;
        employees = loadEmployees();
        
        
        NSLog(@"------------------------------");
        for (Employee *employe in employees) {
            NSLog(@"%@ %@'s salary is $%lu", employe.name, employe.surname, (unsigned long)employe.salary);
        }
    }
    return 0;
}
