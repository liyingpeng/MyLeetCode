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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSMutableArray *inputArray = @[@1,@4,@6,@3,@9,@2].mutableCopy;

    NSMutableArray *inputArray = @[].mutableCopy;
    [self addSource:inputArray count:1000 max:1000];
    
//    [QuickSort startProcess:inputArray];
    inputArray = [MergeSort startProcessNonLocal:inputArray];
//    [InsertSort startProcess:inputArray];
    
    NSLog(@"%@", inputArray);
}

- (void)addSource:(NSMutableArray *)array count:(NSInteger)count max:(NSInteger)maxValue {
    for (int i = 0; i < count; i++) {
        [array addObject:@(arc4random() % maxValue)];
    }
}


@end
