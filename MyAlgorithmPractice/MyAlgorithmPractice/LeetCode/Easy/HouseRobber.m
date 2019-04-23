//
//  HouseRobber.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/23.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "HouseRobber.h"

@implementation HouseRobber

+ (void)load {
    [self robHouse:@[@1, @2, @3, @5, @3, @8]];
}

+ (NSInteger)robHouse:(NSArray *)houseCountArray {
    NSInteger even = 0;
    NSInteger odd = 0;
    
    for (NSInteger i = 0; i < houseCountArray.count; i++) {
        if (i % 2 == 0) {
            even += [houseCountArray[i] integerValue];
            even = odd > even ? odd : even;
        } else {
            odd += [houseCountArray[i] integerValue];
            odd = odd > even ? odd : even;
        }
    }
    
    return odd > even ? odd : even;
    
    // 解法二 DP programming   dp[i] = Math.max(dp[i-1], dp[i-2]+nums[i]).
}

@end
