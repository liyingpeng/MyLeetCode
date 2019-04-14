//
//  Cal8Queens.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/14.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "Cal8Queens.h"

// 回溯法 - 八皇后问题
// 通过回溯体验如何枚举所有可能情况
// 以及递归的精髓

static NSInteger kQueenNum = 8;

@interface Cal8Queens ()

@property(nonatomic, strong) NSMutableArray *array;

@property (nonatomic, assign) NSInteger queenNum;

@end

@implementation Cal8Queens

- (instancetype)init
{
    self = [super init];
    if (self) {
        for (NSInteger i = 0; i < 20; i++) { // 已经扩展实现N皇后问题
            self.queenNum = i;
            
            self.array = [NSMutableArray arrayWithCapacity:i];
            
            [self cal8Queen:0];
        }
    }
    return self;
}

- (void)cal8Queen:(NSInteger)r {
    if (r < 0) {
        // 如果所有行已经都回溯过了 直接返回不能计算即可
        printf("there is no naswer for queen number %ld", (long)self.queenNum);
        printf("\n");
        return;
    }
    if (r == self.queenNum) {
        [self printResult];
        return;
    }
    
    BOOL setted = NO;
    NSInteger i = r < self.array.count ? [self.array[r] integerValue] + 1 : 0;
    
    if (i >= self.queenNum) {
        // 如果当前行已经没有可选了 回溯前一行
        [self.array removeLastObject];
        [self cal8Queen:--r];
        return;
    }
    for (; i < self.queenNum; i++) {
        if ([self isOK:r c:i]) {
            self.array[r] = @(i);
            [self cal8Queen:++r];
            setted = YES;
            break;
        }
    }
    if (!setted) {
        // 开始回溯
        [self cal8Queen:--r];
    }
}

- (BOOL)isOK:(NSInteger)r c:(NSInteger)c {
    NSInteger leftUp = c - 1, rightUp = c + 1;
    
    for (NSInteger i = r - 1; i >= 0; i--) {
        if ([self.array[i] integerValue] == c) return NO;
        if (leftUp >= 0) {
            if ([self.array[i] integerValue] == leftUp) return NO;
        }
        if (rightUp < self.queenNum) {
            if ([self.array[i] integerValue] == rightUp) return NO;
        }
        leftUp--; rightUp++;
    }
    
    return YES;
}

- (void)printResult {
    for (NSInteger i = 0; i < self.queenNum; i++) {
        for (NSInteger j = 0; j < self.array.count; j++) {
            if ([self.array[i] integerValue] == j) {
                printf("Q");
            } else {
                printf("*");
            }
            if (j == self.array.count - 1) {
                printf("\n");
            }
        }
    }
    printf("\n");
}

@end
