//
//  RemoveDuplicateFromArray.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/17.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "RemoveDuplicateFromArray.h"

@implementation RemoveDuplicateFromArray

+ (void)load {
//    [self removeDuplicateFromArray:@[@1, @1, @3, @3, @3, @4, @5, @5].mutableCopy];
}

+ (NSInteger)removeDuplicateFromArray:(NSMutableArray *)array {
    NSInteger count = 0;
    for (NSInteger i = 0; i < array.count; i++) {
        if ([array[count] integerValue] != [array[i] integerValue]) {
            array[++count] = array[i];
        }
    }
    
    if (count < array.count - 1) {
        [array removeObjectsInRange:NSMakeRange(count + 1, array.count - (count + 1))];
    }
    return count + 1;
}

@end
