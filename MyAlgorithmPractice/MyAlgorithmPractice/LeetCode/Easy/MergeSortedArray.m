//
//  MergeSortedArray.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/17.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "MergeSortedArray.h"

@implementation MergeSortedArray

+ (void)load {
//    [self mergeSortedArray:@[@1, @3, @5, @8, @0, @0, @0].mutableCopy m:4 array2:@[@2, @4, @8] n:3];
}

+ (void)mergeSortedArray:(NSMutableArray *)array1 m:(NSInteger)m array2:(NSArray *)array2 n:(NSInteger)n {
    if (array2.count <= 0) return;
    
    // 比较容易想出的从前往后o(n2)的解法, 但不好实现
    
//    NSInteger index = 0;
//    for (NSNumber *n in array2) {
//        for (NSInteger i = index; i < array1.count; i++) {
//
//        }
//    }
//
    // 不容易思考从后往前o(n)的解法
    
    NSInteger i = m - 1;
    NSInteger j = n - 1;
    NSInteger k = m + n - 1;
    
    while (i >= 0 && j >= 0) {
        array1[k--] = [array1[i] integerValue] > [array2[j] integerValue] ? array1[i--] : array2[j--];
    }
    
    while (j >= 0) {
        array1[k--] = array2[j--];
    }
    
    NSLog(@"%@", array1);
}

@end
