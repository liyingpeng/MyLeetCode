//
//  Flatten2DVector_mudium_251.m
//  MyAlgorithmPractice
//
//  Created by 李应鹏 on 2019/4/13.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "Flatten2DVector_mudium_251.h"

// 比较简单，虽然是medium
// 适合考察数组操作，初级应聘者适合

@interface TwoDVector : NSObject

@property (nonatomic, strong) NSArray *array;
@property (nonatomic, assign) NSInteger x;
@property (nonatomic, assign) NSInteger y;

@end

@implementation TwoDVector

- (instancetype)initWithInput:(NSArray *)input
{
    self = [super init];
    if (self) {
        self.array = input;
    }
    return self;
}

- (BOOL)hasNext {
    if (self.x < self.array.count && self.y == ((NSArray *)self.array[self.x]).count) {
        self.x++;
        self.y = 0;
    }
    return self.x < self.array.count;
}

- (NSNumber *)next {
    if (![self hasNext]) return nil;
    return self.array[self.x][self.y++];
}

@end

@implementation Flatten2DVector_mudium_251

+ (void)start {
    TwoDVector *vector = [[TwoDVector alloc] initWithInput:@[@[@1, @2], @[@3, @4]]];
    NSNumber *n = [vector next];
    while (n) {
        NSLog(@"%@", n);
        n = [vector next];
    }
}

@end
