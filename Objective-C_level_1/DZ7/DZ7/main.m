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
    NSData* freezedInfo = [NSKeyedArchiver archivedDataWithRootObject:arrayToSave];
    [freezedInfo writeToFile:FILE_NAME atomically:NO];
}

NSMutableArray* loadEmployees() {
    NSData* freezedInfo = [NSData dataWithContentsOfFile:FILE_NAME];
    NSMutableArray* array = [NSKeyedUnarchiver unarchiveObjectWithData:freezedInfo];
    
    return array; 
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *namesArray = [ NSArray arrayWithObjects: @"John", @"Tim", @"Ted", @"Aaron", @"Steven", nil ];
        NSArray *surnamesArray = [ NSArray arrayWithObjects: @"Smith", @"Dow", @"Isaacson", @"Pennyworth", @"Jenkins", nil];
        NSMutableArray *employees = [[[NSMutableArray alloc] init] autorelease];
        
        for (int i = 0; i < sizeArray; i++) {
            
            Employee *employee = [[Employee alloc] initWhithValues:(arc4random() % minSalary) + minSalary name:[namesArray objectAtIndex:arc4random() % [namesArray count]] surname:[surnamesArray objectAtIndex:arc4random() % [surnamesArray count]]];
            
            [employees addObject: employee];
            [employee release];
        }
        
        for (Employee *employe in employees) {
            NSLog(@"%@ %@'s salary is $%u", employe.name, employe.surname, employe.salary );
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
            NSLog(@"%@ %@'s salary is $%u", employe.name, employe.surname, employe.salary );
        }
        
        
        [employees retain];
        
        saveArrayToFile(employees);
        [employees release];
        
        employees = nil;
        employees = loadEmployees();
        
        
        NSLog(@"------------------------------");
        for (Employee *employe in employees) {
            NSLog(@"%@ %@'s salary is $%u", employe.name, employe.surname, employe.salary);
        }
    }
    return 0;
}
