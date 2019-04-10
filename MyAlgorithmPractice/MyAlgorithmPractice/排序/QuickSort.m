//
//  QuickSort.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/10.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "QuickSort.h"
#import "Util.h"

/*
 *关于快排如何提高排序效率 从而不至于退化到O（n2）复杂度的问题：解决方案如下
 *如何保证稳定性
 */

@implementation QuickSort

+ (void)startProcess:(NSMutableArray *)arrayInput {
    NSLog(@"start time");
    [self quickSort:arrayInput p:0 r:arrayInput.count - 1];
    NSLog(@"end time");
}

+ (void)quickSort:(NSMutableArray *)array p:(NSInteger)p r:(NSInteger)r {
    if (p >= r) return;
    NSInteger q = [self partition:array p:p r:r];
    [self quickSort:array p:p r:q - 1];
    [self quickSort:array p:q + 1 r:r];
}

+ (NSInteger)partition:(NSMutableArray *)array p:(NSInteger)p r:(NSInteger)r {
    // 每次取最后一个元素作为分界点
    NSNumber *pivot = array[r];
    NSInteger i = p;
    for (NSInteger j = p; j < r; j++) {
        if ([array[j] integerValue] < [pivot integerValue]) {
            [Util swap:array firstIndex:i secondIndex:j];
            i++;
        }
    }
    
    [Util swap:array firstIndex:i secondIndex:r];
    // 返回分界点所在index
    return i;
}

@end
