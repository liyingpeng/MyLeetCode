//
//  BSearch.h
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/10.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BSearch : NSObject

+ (void)bSearch:(NSMutableArray *)arrayInput target:(NSNumber *)target;
+ (void)bSearchFirstAccur:(NSMutableArray *)arrayInput target:(NSNumber *)target;
+ (void)bSearchLastAccur:(NSMutableArray *)arrayInput target:(NSNumber *)target;

@end

NS_ASSUME_NONNULL_END
