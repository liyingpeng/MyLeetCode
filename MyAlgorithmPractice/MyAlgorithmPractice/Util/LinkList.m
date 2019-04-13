//
//  LinkList.m
//  MyAlgorithmPractice
//
//  Created by 李应鹏 on 2019/4/13.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "LinkList.h"

@implementation LinkNode

- (instancetype)initWithValue:(id)value
{
    self = [super init];
    if (self) {
        self.value = value;
        self.pre = nil;
        self.next = nil;
    }
    return self;
}

+ (instancetype)nodeWith:(id)value {
    return [[self alloc] initWithValue:value];
}

@end

@implementation LinkList

- (instancetype)init
{
    self = [super init];
    if (self) {
        //
    }
    return self;
}

- (void)insert:(LinkNode *)insertNode {
    if (self.head) {
        LinkNode *node = self.head;
        while (node.next) {
            node = node.next;
        }
        node.next = insertNode;
    } else {
        self.head = insertNode;
    }
}

+ (instancetype)fakeALinkList {
    LinkList *list = [LinkList new];
    [list insert:[LinkNode nodeWith:@1]];
    [list insert:[LinkNode nodeWith:@3]];
    [list insert:[LinkNode nodeWith:@4]];
    [list insert:[LinkNode nodeWith:@1]];
    [list insert:[LinkNode nodeWith:@2]];
    return list;
}

+ (instancetype)fakeACircleList {
    LinkList *list = [LinkList new];
    [list insert:[LinkNode nodeWith:@1]];
    
    LinkNode *node1 = [LinkNode nodeWith:@3];
    [list insert:node1];
    [list insert:[LinkNode nodeWith:@4]];
    [list insert:[LinkNode nodeWith:@1]];
    
    LinkNode *node2 = [LinkNode nodeWith:@2];
    node2.next = node1;
    [list insert:node2];
    
    return list;
}

@end
