//
//  LinkList.h
//  MyAlgorithmPractice
//
//  Created by 李应鹏 on 2019/4/13.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LinkNode : NSObject

@property (nonatomic, strong) id value;
@property (nonatomic, strong) LinkNode *pre;
@property (nonatomic, strong) LinkNode *next;

- (instancetype)initWithValue:(id)value;
+ (instancetype)nodeWith:(id)value;

@end

@interface LinkList : NSObject

@property (nonatomic, strong) LinkNode *head;
+ (instancetype)fakeALinkList;
+ (instancetype)fakeACircleList;

@end

NS_ASSUME_NONNULL_END
