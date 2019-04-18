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
    Tree *tree = [[Tree alloc] initWithArray:@[@"A", @"B", @"D", @"#", @"#", @"E", @"#", @"#", @"C", @"F",@"#", @"#", @"G", @"#", @"#"]];
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
