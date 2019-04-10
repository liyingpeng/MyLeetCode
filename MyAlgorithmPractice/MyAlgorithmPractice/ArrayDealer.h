//
//  ArrayDealer.h
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/10.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#ifndef ArrayDealer_h
#define ArrayDealer_h

@protocol ArrayDealer <NSObject>

@optional

// 原地排序算法
+ (void)startProcess:(NSMutableArray *)arrayInput;

// 非原地排序算法
+ (NSMutableArray *)startProcessNonLocal:(NSMutableArray *)arrayInput;

@end


#endif /* ArrayDealer_h */
