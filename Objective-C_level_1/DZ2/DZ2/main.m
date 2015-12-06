//
//  main.m
//  DZ2
//
//  Created by Александр on 02.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import <Foundation/Foundation.h>

#define MAX_ITERATION 21
#define DIVIDEND 3

typedef enum
{
    plus,
    mines,
    multi,
    divis
    
} CalculationType;

int calculate(CalculationType operator, int firstOperand, int secondOperand);
unsigned long long quandMultiplier (unsigned long long bigNumber);
unsigned int factorial( unsigned int n);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int firstOperand = 10;
        int secondOperand = 2;
        
        NSLog(@"Результат %d + %d = %d", firstOperand, secondOperand, calculate(plus, firstOperand, secondOperand));
        NSLog(@"Результат %d - %d = %d", firstOperand, secondOperand, calculate(mines, firstOperand, secondOperand));
        NSLog(@"Результат %d * %d = %d", firstOperand, secondOperand, calculate(multi, firstOperand, secondOperand));
        if (secondOperand != 0) {
            NSLog(@"Результат %d / %d = %d", firstOperand, secondOperand, calculate(divis, firstOperand, secondOperand));
        }
        else
        {
            calculate(divis, firstOperand, secondOperand);
        }
        
        for (int i = 1; i < MAX_ITERATION; i++) {
            
            if (quandMultiplier(i) == 16) {
                break;
            }
            if (quandMultiplier(i) % DIVIDEND == 0) {
                NSLog(@"Число %llu кратное %d", quandMultiplier(i), DIVIDEND);
            }
            else
            {
                NSLog(@"Результат %llu", quandMultiplier(i) / DIVIDEND);
                continue;
            }
            
            NSLog(@"Осталось %d итераций", MAX_ITERATION - i);
        }
        
        NSLog(@"factorial 5 = %d", factorial(5));

    }
    
    return 0;
}

int calculate(CalculationType operator, int firstOperand, int secondOperand)
{
    switch (operator) {
        case plus:
            return firstOperand + secondOperand;
        case mines:
            return firstOperand - secondOperand;
        case multi:
            return firstOperand * secondOperand;
        case divis:
            if (secondOperand != 0) {
                return firstOperand / secondOperand;
            }
            else
            {
                NSLog(@"Делить на 0 нельзя!");
                return 0;
            }
        default:
            NSLog(@"Операция %u не определена", operator);
            break;
    }
}

unsigned long long quandMultiplier (unsigned long long bigNumber)
{
    return bigNumber * 4;
}

unsigned int factorial( unsigned int n)
{
    if (n == 1) {
        return n;
    }
    else
    {
        return n * factorial(n - 1);
    }
}