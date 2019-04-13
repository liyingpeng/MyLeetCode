//
//  DetectLinkListCircle_medium_142.m
//  MyAlgorithmPractice
//
//  Created by 李应鹏 on 2019/4/13.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "DetectLinkListCircle_medium_142.h"

// 检测一个链表有没有环
//

@implementation DetectLinkListCircle_medium_142

- (instancetype)init
{
    self = [super init];
    if (self) {
        LinkNode *head = [LinkList fakeACircleList].head;
        LinkNode *node = [self detectCircle:head];
        NSLog(@"%@", node.value);
    }
    return self;
}

- (LinkNode *)detectCircle:(LinkNode *)head {
    
    return nil;
}

@end
