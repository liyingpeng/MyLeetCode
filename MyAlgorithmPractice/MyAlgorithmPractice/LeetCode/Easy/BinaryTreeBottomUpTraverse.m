//
//  BinaryTreeBottomUpTraverse.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/23.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "BinaryTreeBottomUpTraverse.h"

@implementation BinaryTreeBottomUpTraverse

+ (void)load {
//    Tree *tree = [[Tree alloc] initWithArray:@[@"50", @"45", @"60", @"40", @"48", @"55", @"68", @"30", @"42", @"47",@"49", @"52", @"58", @"64", @"70"]];
//    [self bottomUpBFS:tree.root];
}

+ (NSMutableArray *)bottomUpBFS:(TreeNode *)root {
    Queue *queue = [Queue new];
    [queue push:root];
    
    NSMutableArray *res = @[].mutableCopy;
    
    while (![queue isEmpty]) {
        
        NSMutableArray *test = @[].mutableCopy;
        NSInteger size = [queue size];
        
        for (NSInteger i = 0; i < size; i++) {
            TreeNode *popNode = [queue pop];
            [test addObject:popNode];
            !popNode.left ?: [queue push:popNode.left];
            !popNode.right ?: [queue push:popNode.right];
        }
        
        [res insertObject:test atIndex:0];
    }
    
    return res;
}

@end
