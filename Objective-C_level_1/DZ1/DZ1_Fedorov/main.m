//
//  main.m
//  DZ1_Fedorov
//
//  Created by Александр on 27.11.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import <Foundation/Foundation.h>

#define MY_AGE 22
#define DAYS_IN_YEAR 365.7

#define TEN_YEARS 10

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int myAgeInTenYears = MY_AGE + TEN_YEARS;
        float daysPassed = myAgeInTenYears * DAYS_IN_YEAR;
        
        NSLog(@"Через 10 лет мне будет %d лет, с момента моего рождения пройдет %.2f дней", myAgeInTenYears, daysPassed);
        
        unsigned firstVar = 7;
        unsigned secondVar = 3;
        
        if (secondVar != 0)
        {
            int result = firstVar / secondVar;
            int remainder = firstVar % secondVar;
            
            NSLog(@"При делении %d на %d результат равен %d, остаток от деления %d", firstVar, secondVar, result, remainder);
            
            if (remainder && result) {
                NSLog(@"При делении %d на %d результат равен %d %d/%d", firstVar, secondVar, result, remainder, secondVar);
            }
            else if (remainder && !result)
            {
                 NSLog(@"При делении %d на %d результат равен %d/%d", firstVar, secondVar, remainder, secondVar);
            }
            else
            {
                NSLog(@"При делении %d на %d результат равен %d", firstVar, secondVar, result);
            }
        }
        else
        {
            NSLog(@"Второе число не может быть равно 0.");
        }
        
        NSString *firstString = @"I can";
        NSString *secondString = @"code";
        
        NSLog(@"%@ %@!", firstString, secondString);
        
    }
    return 0;
}
