//
//  LengthOfLongestSubstring_Medium_3.m
//  MyAlgorithmPractice
//
//  Created by 李应鹏 on 2019/4/13.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "LengthOfLongestSubstring_Medium_3.h"
#import "Math.h"

// LeetCode 3 Airbnb
// 最长无重复公共子序列
// https://leetcode.com/problems/longest-substring-without-repeating-characters/
// 快慢指针
// hash 表 数组常规用法 元素作为key index 作为value

// 不是很适合面试，能想到就差不多能写出来

@implementation LengthOfLongestSubstring_Medium_3

+ (NSInteger)lengthOfLongestSubstring:(NSString *)s {
    if (s.length <= 0) return 0;
    NSMutableDictionary<NSString *, NSNumber *> *hash = @{}.mutableCopy;
    
    NSInteger result = 0;
    NSInteger low = 0;
    
    for (NSInteger i = 0; i < s.length; i++) {
        unichar c = [s characterAtIndex:i];
        NSString *key = [NSString stringWithCharacters:&c length:1];
        if ([hash objectForKey:key]) {
            // 该元素重复，慢指针向前走，指向该元素的下一个index， 错开重复元素即可
            low = MAX(low, [hash objectForKey:key].integerValue + 1);
            
        }
        [hash setObject:@(i) forKey:key];
        
        result = MAX(result, i - low + 1);
    }
    
    return result;
}

+ (NSString *)longestSubstringOfString:(NSString *)s {
    if (s.length <= 0) return @"";
    NSMutableDictionary<NSString *, NSNumber *> *hash = @{}.mutableCopy;
    
    NSInteger result = 0;
    NSInteger low = 0;
    
    for (NSInteger i = 0; i < s.length; i++) {
        unichar c = [s characterAtIndex:i];
        NSString *key = [NSString stringWithCharacters:&c length:1];
        if ([hash objectForKey:key]) {
            // 该元素重复，慢指针向前走
            low = MAX(low, [hash objectForKey:key].integerValue + 1);
            
        }
        [hash setObject:@(i) forKey:key];
        
        result = MAX(result, i - low + 1);
    }
    
    NSString *subString = [s substringWithRange:NSMakeRange(low, result)];
    return subString;
}

@end
