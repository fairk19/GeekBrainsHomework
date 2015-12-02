//
//  main.m
//  DZ2
//
//  Created by Александр on 02.12.15.
//  Copyright © 2015 Alexandr Fedorov. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    plus,
    mines,
    multi,
    divis
    
} CalculationType;

int calculate(CalculationType operator, int firstOperand, int secondOperand);

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