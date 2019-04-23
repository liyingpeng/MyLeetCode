//
//  Stack.h
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/14.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Stack : NSObject

- (void)push:(id)item;

- (void)remove:(id)item;

- (id)pop;

- (id)peak;

- (BOOL)isEmpty;

- (void)clear;

- (NSUInteger)size;

@end

NS_ASSUME_NONNULL_END
