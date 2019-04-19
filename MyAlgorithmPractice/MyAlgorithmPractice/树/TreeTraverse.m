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
    
    Stack *stack = [Stack new];

    TreeNode *node = root;

    while (node || ![stack isEmpty]) {
        // 优先push所有左子节点
        while (node) {
            [stack push:node];
            node = node.left;
        }
        
        if (![stack isEmpty]) {
            node = [stack pop];
            NSLog(@"%@", node.value);
            // 把右子节点所有的左子节点压栈
            node = node.right;
        }
    }
    
    // 递归
//    [self inorderDFS:root.left];
//    NSLog(@"%@", root.value);
//    [self inorderDFS:root.right];
}

// 前序
+ (void)preorderDFS:(TreeNode *)root {
    if (!root) return;
    
    Stack *stack = [Stack new];
    
    TreeNode *node = root;
    
    while (node || ![stack isEmpty]) {
        // 优先push所有左子节点
        while (node) {
            NSLog(@"%@", node.value);
            [stack push:node];
            node = node.left;
        }
        
        if (![stack isEmpty]) {
            node = [stack pop];
            // 把右子节点所有的左子节点压栈
            node = node.right;
        }
    }
    
    // 递归
//    NSLog(@"%@", root.value);
//    [self preorderDFS:root.left];
//    [self preorderDFS:root.right];
}

// 后序
+ (void)deorderDFS:(TreeNode *)root {
    if (!root) return;

    Stack *stack = [Stack new];
    
    TreeNode *node = root;
    TreeNode *lastVisit = root;
    
    while (node || ![stack isEmpty]) {
        // 优先push所有左子节点
        while (node) {
            [stack push:node];
            node = node.left;
        }
        
        node = [stack peak];
        
        if (!node.right || node.right == lastVisit) {
            NSLog(@"%@", node.value);
            [stack pop];
            lastVisit = node;
            node = nil;
        } else {
            node = node.right;
        }
    }
    
    // 递归
//    [self deorderDFS:root.left];
//    [self deorderDFS:root.right];
//    NSLog(@"%@", root.value);
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
// 本质上是中序遍历 得到一个有序的数列 控制k即可
+ (TreeNode *)findKthSmallest:(TreeNode *)root k:(NSInteger)k {
    if (!root) return nil;
    
    Stack *stack = [Stack new];
    
    TreeNode *node = root;
    
    NSInteger index = 0;
    
    while (node || ![stack isEmpty]) {
        // 优先push所有左子节点
        while (node) {
            [stack push:node];
            node = node.left;
        }
        
        if (![stack isEmpty]) {
            node = [stack pop];
            NSLog(@"%@", node.value);
            if (++index == k) {
                return node;
            }
            // 把右子节点所有的左子节点压栈
            node = node.right;
        }
    }
    
    return nil;
}

@end
