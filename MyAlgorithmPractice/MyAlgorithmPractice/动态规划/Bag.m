//
//  Bag.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/14.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

/*
 * 本模块集中列举 解决所有背包问题。涉及 回溯 、动态规划解法
 * 先把实现copy过来了，一脸懵逼
*/
#import "Bag.h"

static NSInteger maxW = 0;

@implementation Bag

//  @[@1, @7, @19, @2, @8, @5, @8]   0   0  30
+ (void)startCal:(NSArray *)input index:(NSInteger)index cw:(NSInteger)cw w:(NSInteger)w {
    if (cw == w || index == input.count) {
        if (cw > maxW) {
            maxW = cw;
            NSLog(@"current w : %ld", cw);
        }
        return;
    }
    [self startCal:input index:index + 1 cw:cw w:w];
    if (cw + [input[index] integerValue] <= w) {
        [self startCal:input index:index + 1 cw:cw + [input[index] integerValue] w:w];
    }
}

@end
