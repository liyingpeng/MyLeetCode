//
//  ViewController.m
//  MyAlgorithmPractice
//
//  Created by liyingpeng on 2019/4/10.
//  Copyright © 2019 liyingpeng. All rights reserved.
//

#import "ViewController.h"
#import "QuickSort.h"
#import "MergeSort.h"
#import "InsertSort.h"

#import "BSearch.h"

#import "LengthOfLongestSubstring_Medium_3.h"
#import "Flatten2DVector_mudium_251.h"
#import "DetectLinkListCircle_medium_142.h"

#import "Cal8Queens.h"

#import "Bag.h"

#import "TreeTraverse.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 排序 ---------------------------------------------------------
    
//    NSMutableArray *inputArray = @[@1,@4,@6,@3,@9,@2].mutableCopy;

//    NSMutableArray *inputArray = @[].mutableCopy;
//    [self addSource:inputArray count:1000 max:1000];
    
//    [QuickSort startProcess:inputArray];
//    inputArray = [MergeSort startProcessNonLocal:inputArray];
//    [InsertSort startProcess:inputArray];
    
//    NSLog(@"%@", inputArray);
    
    
    // 查找 ---------------------------------------------------------
    
//    [BSearch bSearch:inputArray target:@1];
//    [BSearch bSearchFirstAccur:@[@1,@1,@1,@1].mutableCopy target:@1];
    
    // leetcode
    
//    [LengthOfLongestSubstring_Medium_3 lengthOfLongestSubstring:@"bacajsodf"];
//    [LengthOfLongestSubstring_Medium_3 longestSubstringOfString:@"bacajsodf"];
//    [Flatten2DVector_mudium_251 start];
    
//    [DetectLinkListCircle_medium_142 new];

//    [Cal8Queens new];
    
//    [Bag startCal:@[@1, @7, @19, @2, @8, @5, @8] index:0 cw:0 w:18];
    
    Tree *tree = [[Tree alloc] initWithArray:@[@"50", @"45", @"60", @"40", @"48", @"55", @"68", @"30", @"42", @"47",@"49", @"52", @"58", @"64", @"70"]];
//    [TreeTraverse bds:tree.root];
//    [TreeTraverse inorderDFS:tree.root];
//    [TreeTraverse preorderDFS:tree.root];
//    [TreeTraverse deorderDFS:tree.root];
    [TreeTraverse findKthSmallest:tree.root k:2];
}

- (void)addSource:(NSMutableArray *)array count:(NSInteger)count max:(NSInteger)maxValue {
    for (int i = 0; i < count; i++) {
        [array addObject:@(arc4random() % maxValue)];
    }
}


@end
