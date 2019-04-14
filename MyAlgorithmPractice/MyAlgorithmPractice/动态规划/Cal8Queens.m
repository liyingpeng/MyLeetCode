//
//  Cal8Queens.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/14.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "Cal8Queens.h"

static NSInteger kQueenNum = 9;

// 回溯法 - 八皇后问题
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
