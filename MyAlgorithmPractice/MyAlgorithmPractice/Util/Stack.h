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

@property (assign, nonatomic) NSInteger size;   // 元素个数

// 为了性能，以下函数设计为线程不安全的，调用者需用 GCD 自行管理
- (void)push:(id)elem;      // 入栈
- (void)pop;                // 出栈
- (id)top;                  // 返回栈顶元素，或 nil
- (BOOL)isEmpty;            // 判空
- (NSArray *)allObjects;    // 返回栈中所有元素，顺序是栈顶到栈底
- (void)clear;              // 清空栈

@end

NS_ASSUME_NONNULL_END
