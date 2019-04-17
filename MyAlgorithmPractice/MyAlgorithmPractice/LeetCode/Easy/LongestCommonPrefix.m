//
//  LongestCommonPrefix.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/17.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "LongestCommonPrefix.h"

@implementation LongestCommonPrefix

+ (void)load {
//    [LongestCommonPrefix longestCommonPrefix:@[@"clqwer", @"clasojdjf", @"cljpoi"]];
}

+ (NSString *)longestCommonPrefix:(NSArray *)stringArray {
    if (stringArray.count == 0) return @"";
    
    NSString *prefix = stringArray[0];
    if (stringArray.count == 1) return prefix;
    
    BOOL done = NO;
    while (prefix.length > 0 && !done) {
        for (int i = 1; i < stringArray.count; i++) {
            NSString *s = stringArray[i];
            if (![s containsString:prefix]) {
                prefix = [prefix substringToIndex:prefix.length - 2];
                done = NO;
                break;
            } else if (i == stringArray.count - 1) {
                done = YES;
                break;
            }
        }
    }
    
    return prefix;
}

@end
