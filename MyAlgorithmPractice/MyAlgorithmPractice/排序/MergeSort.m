//
//  MergeSort.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/10.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "MergeSort.h"

/*
 * 如何用哨兵简化merge代码
 * 归并性能分析
 */

@implementation MergeSort

+ (NSMutableArray *)startProcessNonLocal:(NSMutableArray *)arrayInput {
    return [self mergeSort:arrayInput p:0 r:arrayInput.count - 1];
}

+ (NSMutableArray *)mergeSort:(NSMutableArray *)array p:(NSInteger)p r:(NSInteger)r {
    if (p >= r) return @[array[p]].mutableCopy;
    
    NSInteger q = p + (r - p) / 2;
    
    NSMutableArray *array1 = [self mergeSort:array p:p r:q];
    NSMutableArray *array2 = [self mergeSort:array p:q + 1 r:r];
    
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:r - p];
    [self merge:array1 array2:array2 toArray:result];
    
    return result;
}

+ (void)merge:(NSMutableArray *)array1 array2:(NSMutableArray *)array2 toArray:(NSMutableArray *)resultArray {
    NSInteger i = 0, j = 0;
    while (i < array1.count && j < array2.count) {
        if ([array1[i] integerValue] <= [array2[j] integerValue]) {
            resultArray[i + j] = array1[i];
            i++;
        } else {
            resultArray[i + j] = array2[j];
            j++;
        }
    }
    
    // copy array1 剩余元素
    if (i < array1.count) {
        for (; i < array1.count; i++) {
            resultArray[i + j] = array1[i];
        }
    }
    
    // copy array2 剩余元素
    if (j < array2.count) {
        for (; j < array2.count; j++) {
            resultArray[i + j] = array2[j];
        }
    }
}

@end
