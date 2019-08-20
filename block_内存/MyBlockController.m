//
//  MyBlockController.m
//  block_内存
//
//  Created by Licheng on 2018/10/12.
//  Copyright © 2018年 licheng. All rights reserved.
//

#import "MyBlockController.h"

@interface MyBlockController ()

@end

@implementation MyBlockController
//clang src.m -rewrite-objc -o dest.cpp
- (void)viewDidLoad {
    [super viewDidLoad];
   
    void (^blk)(void) = ^{printf("Block\n");};
    blk();
    
   
}



@end
