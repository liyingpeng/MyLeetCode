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

#import "LongLengthOfSubStrings.h"

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
    
//    [LongLengthOfSubStrings lengthOfLongestSubstring:@"bacajsodf"];
    [LongLengthOfSubStrings longestSubstringOfString:@"bacajsodf"];

}

- (void)addSource:(NSMutableArray *)array count:(NSInteger)count max:(NSInteger)maxValue {
    for (int i = 0; i < count; i++) {
        [array addObject:@(arc4random() % maxValue)];
    }
}


@end
