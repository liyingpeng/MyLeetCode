//
//  Tree.m
//  MyAlgorithmPractice
//
//  Created by 李应鹏 on 2019/4/13.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "Tree.h"

@implementation TreeNode

- (instancetype)initWithValue:(id)value
{
    self = [super init];
    if (self) {
        self.value = value;
    }
    return self;
}

@end

@implementation Tree

+ (void)load {
    // 普通二叉树
//    Tree *tree = [[Tree alloc] initWithArray:@[@"A", @"B", @"D", @"#", @"#", @"E", @"#", @"#", @"C", @"F",@"#", @"#", @"G", @"#", @"#"]];
    
    // 二叉搜索树
//    Tree *tree = [[Tree alloc] initWithArray:@[@"50", @"45", @"60", @"40", @"48", @"55", @"68", @"30", @"42", @"47",@"49", @"52", @"58", @"64", @"70"]];

}

- (instancetype)initWithArray:(NSArray *)array
{
    self = [super init];
    if (self) {
        self.root = [self treeNodeConstructor:array index:0];
    }
    return self;
}

- (TreeNode *)treeNodeConstructor:(NSArray *)data index:(NSInteger)index {
    if (index >= data.count) return nil;
    
    TreeNode *root = [(NSString *)data[index] isEqualToString:@"#"] ? nil : [[TreeNode alloc] initWithValue:data[index]];
    
    NSInteger lIndex = 2 * index + 1;
    
    NSInteger rIndex = 2 * index + 2;
    
    if (lIndex < data.count) {
        root.left = [self treeNodeConstructor:data index:lIndex];
    }

    if (rIndex < data.count) {
        root.right = [self treeNodeConstructor:data index:rIndex];
    }
    
    return root;
}

@end
