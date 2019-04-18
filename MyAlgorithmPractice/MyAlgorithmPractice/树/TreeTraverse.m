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
