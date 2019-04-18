//
//  Stack.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/14.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "Stack.h"

@interface Stack ()
@property (nonatomic, strong) NSMutableArray *heap;
@end

@implementation Stack

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.heap = @[].mutableCopy;
    }
    return self;
}

- (BOOL)isEmpty {
    return [self size] == 0;
}

- (BOOL)contains:(id)object {
    for (id item in self.heap) {
        if ([item isEqual:object]) {
            return YES;
        }
    }
    return NO;
}

- (NSUInteger)size {
    return self.heap.count;
}

- (void)clear {
    self.heap = @[].mutableCopy;
}

- (void)push:(id)item {
    [self.heap addObject:item];
}

- (id)pop {
    if (self.heap.count <= 0) return nil;
    id res = self.heap.lastObject;
    [self.heap removeLastObject];
    return res;
}

- (void)remove:(id)item {
    [self.heap removeObject:item];
}

- (id)peak {
    return [self.heap lastObject];
}

@end
