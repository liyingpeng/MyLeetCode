//
//  BSearch.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/10.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "BSearch.h"

@implementation BSearch

+ (void)bSearch:(NSMutableArray *)arrayInput target:(NSNumber *)target {
    NSInteger low = 0;
    NSInteger high = arrayInput.count - 1;
    while (low <= high) {
        NSInteger middle = low + (high - low) / 2;
        if ([arrayInput[middle] integerValue] < [target integerValue]) {
            low = middle + 1;
        } else if ([arrayInput[middle] integerValue] > [target integerValue]) {
            high = middle - 1;
        } else {
            NSLog(@"found %ld", (long)middle);
            return;
        }
    }
    
    NSLog(@"not found");
}

+ (void)bSearchFirstAccur:(NSMutableArray *)arrayInput target:(NSNumber *)target {
    NSInteger low = 0;
    NSInteger high = arrayInput.count - 1;
    while (low <= high) {
        NSInteger middle = low + (high - low) / 2;
        if ([arrayInput[middle] integerValue] < [target integerValue]) {
            low = middle + 1;
        } else if ([arrayInput[middle] integerValue] > [target integerValue]) {
            high = middle - 1;
        } else {
            if (middle > 0 && [arrayInput[middle - 1] integerValue] == [target integerValue]) {
                high = middle - 1;
            } else {
                NSLog(@"found %ld", (long)middle);
                return;
            }
        }
    }
    
    NSLog(@"not found");
}

+ (void)bSearchLastAccur:(NSMutableArray *)arrayInput target:(NSNumber *)target {
    NSInteger low = 0;
    NSInteger high = arrayInput.count - 1;
    while (low <= high) {
        NSInteger middle = low + (high - low) / 2;
        if ([arrayInput[middle] integerValue] < [target integerValue]) {
            low = middle + 1;
        } else if ([arrayInput[middle] integerValue] > [target integerValue]) {
            high = middle - 1;
        } else {
            if (middle + 1 < arrayInput.count && [arrayInput[middle + 1] integerValue] == [target integerValue]) {
                low = middle + 1;
            } else {
                NSLog(@"found %ld", (long)middle);
                return;
            }
        }
    }
    
    NSLog(@"not found");
}

@end
