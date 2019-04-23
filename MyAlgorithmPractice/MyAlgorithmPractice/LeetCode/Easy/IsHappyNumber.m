//
//  IsHappyNumber.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/23.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "IsHappyNumber.h"

@implementation IsHappyNumber

+ (void)load {
//    [self isHappyNumber:19];
}

+ (BOOL)isHappyNumber:(NSInteger)num {
    NSInteger n = num;
    NSMutableSet *set = [NSMutableSet set];
    while (![set containsObject:@(n)]) {
        [set addObject:@(n)];
        
        NSInteger sum = 0;
        
        while (n > 0) {
            NSInteger temp = n % 10;
            sum += temp * temp;
            n = n / 10;
        }
        
        if (sum == 1) {
            return YES;
        }
        
        n = sum;
    }
    
    return NO;
}

@end
