//
//  DetectLinkListCircle_medium_142.m
//  MyAlgorithmPractice
//
//  Created by 李应鹏 on 2019/4/13.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "DetectLinkListCircle_medium_142.h"

// 检测一个链表有没有环
// 快慢指针证明有环

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
    LinkNode *fast = head;
    LinkNode *slow = head;
    
    BOOL hasCircle = NO;
    while (fast && slow) {
        fast = fast.next;
        if (!slow.next) return nil;
        else slow = slow.next.next;
        if (fast == slow) {
            hasCircle = YES;
            break;
        }
    }
    
    if (!hasCircle) return nil;
    fast = head;
    
    while (fast != slow) {
        fast = fast.next;
        slow = slow.next;
    }
    
    return fast;
}

@end
