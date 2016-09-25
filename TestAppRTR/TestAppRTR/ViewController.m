//
//  ViewController.m
//  TestAppRTR
//
//  Created by Lea Marolt on 11/22/15.
//  Copyright © 2015 Lea Marolt Sonnenschein. All rights reserved.
//

#import "ViewController.h"
#import "DataManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1. SINGLETONS
    
    NSNumber *servicesCount = [DataManager sharedManager].servicesCount;
    NSLog(@"Services count: %@", servicesCount);
    
    // 2. SORTING
    
    NSArray *numbers = @[@0, @2, @3, @5, @10, @2];
    NSArray *sortedNumbers = [numbers sortedArrayUsingComparator:^NSComparisonResult(id first, id second) {
        if (first > second) {
            return NSOrderedDescending;
        } else {
            return NSOrderedAscending;
        }
        
        return NSOrderedSame;
    }];
    
    NSLog(@"Sorted nums: %@", sortedNumbers);
    
    
    // 4. METHODS
    
    int addTwo = [self addNumber:@5 toNumber:@6];
    
    NSLog(@"Add: %d", addTwo);
    
    int arr[3] = {5, 6};
    int add1 = [self addIntegersFromIntArray:arr];
    NSLog(@"Add First: %d", add1);
    int add = [self addIntegersFromNSNumArray:@[@5, @6]];
    NSLog(@"Add Second: %d", add);
    
    NSString *cantTouch = @"Can't touch me";
    NSLog(@"I want to stay like this: %@", cantTouch);
    [self cantTouchThisString:cantTouch];
    NSLog(@"And I get to!: %@", cantTouch);
    
    // 5. PATTERN MATCHING
    
    NSArray *nmbrs = @[@0, @1, @2, @3, @4, @5, @6, @7, @8, @9, @10];
    for (NSNumber *num in nmbrs) {
        if ([num integerValue] % 2 == 0) {
            NSLog(@"Even: %@", num);
        }
    }
}

////////////////////
// 4. METHODS
////////////////////

// LENGTH & NAMING CLARITY

- (int) addNumber:(NSNumber *)firstNum toNumber:(NSNumber *)secondNumber {
    int result = [firstNum intValue] + [secondNumber intValue];
    
    return result;
}

// VERSATILE PARAMETERS
- (int) addIntegersFromIntArray: (int *) intArr {
    
    int result = 0;
    int arraySize = (sizeof intArr) / (sizeof intArr[0]);
    for (int i = 0; i < arraySize; i++) {
        result += intArr[i];
    }
    
    return result;

}

- (int) addIntegersFromNSNumArray: (NSArray *) NSNumArr {
    
    int result = 0;
    
    for (NSNumber *num in NSNumArr) {
        result += [num intValue];
    }
    
    return result;
}

// SAFETY

- (NSString *)cantTouchThisString:(NSString *)string {
    string = [NSString stringWithFormat:@"My string is %@", string];
    return string;
}

@end
