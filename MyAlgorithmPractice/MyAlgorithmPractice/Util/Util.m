//
//  Util.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/10.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "Util.h"

@implementation Util

+ (void)swap:(NSMutableArray *)inputArray firstIndex:(NSInteger)firstIndex secondIndex:(NSInteger)secondIndex {
    id test = inputArray[secondIndex];
    inputArray[secondIndex] = inputArray[firstIndex];
    inputArray[firstIndex] = test;
}

@end
