//
//  TreeTraverse.h
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/18.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TreeTraverse : NSObject

// 中序
+ (void)inorderDFS:(TreeNode *)root;

// 前序
+ (void)preorderDFS:(TreeNode *)root;

// 后序
+ (void)deorderDFS:(TreeNode *)root;

// 广度优先遍历
+ (void)bds:(TreeNode *)root;

// 二叉搜索树 第k小的元素
+ (TreeNode *)findKthSmallest:(TreeNode *)root k:(NSInteger)k;


@end

NS_ASSUME_NONNULL_END
