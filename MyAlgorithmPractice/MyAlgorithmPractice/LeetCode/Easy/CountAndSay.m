//
//  CountAndSay.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/23.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "CountAndSay.h"

@implementation CountAndSay

+ (void)load {
    for (NSInteger i = 1; i < 12; i++) {
        printf("%s", [[self countAndSay:i] cStringUsingEncoding:NSUTF8StringEncoding]);
        printf("\n");
    }
    
//    [self countAndSay:5];
}

+ (NSString *)countAndSay:(NSInteger)n {
    if (n <= 0) return @"";
    
    NSInteger count = n;
    
    NSMutableString *res = [NSMutableString stringWithString:@"1"];
    
    while (count > 0) {
        NSInteger testCount = 1;
        NSMutableString *testStr = [NSMutableString string];

        for (NSInteger i = 0; i < res.length; i++) {
            if ((i + 1) < res.length && [res characterAtIndex:i] == [res characterAtIndex:i + 1]) {
                testCount++;
            } else {
                [testStr appendString:@(testCount).stringValue];
                [testStr appendString:[NSString stringWithFormat: @"%C", [res characterAtIndex:i]]];
                testCount = 1;
            }
        }
        res = testStr;
        count--;
    }
    
    return res;
}

@end
