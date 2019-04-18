//
//  TreeTraverse.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/18.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "TreeTraverse.h"

@implementation TreeTraverse

// 中序
+ (void)inorderDFS:(TreeNode *)root {
    if (!root) return;
    
//    Stack *stack = [Stack new];
//
//    TreeNode *node = root;
//    while (node) {
//        [stack push:root.left];
//        node = node.left;
//    }
//
//    while (![stack isEmpty]) {
//        TreeNode *n = [stack pop];
//        NSLog(@"%@", n.value);
//        if (n.right) {
//            [stack push:n.right];
//        } else {
//
//        }
//    }
    
    [self inorderDFS:root.left];
    NSLog(@"%@", root.value);
    [self inorderDFS:root.right];
}

// 前序
+ (void)preorderDFS:(TreeNode *)root {
    
}

// 后序
+ (void)deorderDFS:(TreeNode *)root {
    
}

// 广度优先遍历
+ (void)bds:(TreeNode *)root {
    Queue *queue = [Queue new];
    [queue push:root];
    
    while (![queue isEmpty]) {
        TreeNode *node = [queue pop];
        NSLog(@"%@", node.value);
        !node.left ?: [queue push:node.left];
        !node.right ?: [queue push:node.right];
    }
}

// 二叉搜索树 第k小的元素
+ (TreeNode *)findKthSmallest:(TreeNode *)root k:(NSInteger)k {
    return nil;
}

@end
