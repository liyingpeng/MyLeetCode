//
//  ContainDuplicate.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/19.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "ContainDuplicate.h"

@implementation ContainDuplicate

// 维护一个定长的set，也是类似前后指针的方式
+ (BOOL)containsNearbyDuplicate:(NSArray *)array k:(NSInteger)k {
    NSMutableSet *set = [NSMutableSet new];
    for (NSInteger i = 0; i < array.count; i++) {
        if (i > k) {
            [set removeObject:array[i - k - 1]];
        }
        if ([set containsObject:array[i]]) {
            return YES;
        } else {
            [set addObject:array[i]];
        }
    }
    return NO;
}

@end
