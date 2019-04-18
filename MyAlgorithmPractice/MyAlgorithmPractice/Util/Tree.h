//
//  Tree.h
//  MyAlgorithmPractice
//
//  Created by 李应鹏 on 2019/4/13.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TreeNode : NSObject

@property (nonatomic, strong) id value;
@property (nonatomic, strong) TreeNode *left;
@property (nonatomic, strong) TreeNode *right;

@end

@interface Tree : NSObject

@property (nonatomic, strong) TreeNode *root;



@end

NS_ASSUME_NONNULL_END
