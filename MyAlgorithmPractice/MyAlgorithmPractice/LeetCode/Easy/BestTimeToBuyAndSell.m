//
//  BestTimeToBuyAndSell.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/17.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "BestTimeToBuyAndSell.h"

@implementation BestTimeToBuyAndSell

+ (void)load {
    [self BestTimeToBuyAndSell:@[@1, @2, @1, @3, @4, @6]];
}

+ (NSInteger)BestTimeToBuyAndSell:(NSArray *)array {
    NSInteger low = 0;
    NSInteger high = 0;
    NSInteger result = 0;
    for (NSInteger i = 0; i < array.count; i++) {
        if ([array[i] integerValue] >= [array[high] integerValue]) {
            high = i;
        } else {
            result += [array[high] integerValue] - [array[low] integerValue];
            low = high = i;
        }
    }
    
    if (high > low) {
        result += [array[high] integerValue] - [array[low] integerValue];
    }
    return result;
}

@end
