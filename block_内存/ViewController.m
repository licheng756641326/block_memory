//
//  ViewController.m
//  block_内存
//
//  Created by Licheng on 2018/10/11.
//  Copyright © 2018年 licheng. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>

@interface ViewController ()
@property (nonatomic,strong)void(^cyclesReferenceBlock)(void);

@property (nonatomic,copy)void(^copyBlock)(void);
@property (nonatomic,strong)void(^strongBlock)(void);
@property (nonatomic,weak)void(^weakBlock)(void);
@end

@implementation ViewController

int m = 10;
static int n= 100;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    int i = 300;
//
   void (^myblock)(int a) = ^(int a){
       m = m+2;
       NSLog(@"blocklog-> %d",m);
    };

    myblock(i);
//
//    Class blockClass = object_getClass(myblock);
//     NSLog(@"blockClass->%@",blockClass);
//    Class superClass = class_getSuperclass(blockClass);
//     NSLog(@"superClass->%@",superClass);
//    while (superClass) {
//        superClass = class_getSuperclass(superClass);
//        NSLog(@"superClass->%@",superClass);
//    };
    
 
}

- (void)blocktest{
    __block char a;
    
    objc_setAssociatedObject(self, &a, @1, OBJC_ASSOCIATION_ASSIGN);
    void (^block)(void) = ^{
        
        objc_setAssociatedObject(self, &a, @2, OBJC_ASSOCIATION_ASSIGN);
    };
    
    id x = objc_getAssociatedObject(self, &a);
    block();
    id y = objc_getAssociatedObject(self, &a);
    NSLog(@"x->%@ y->%@",x,y);
    
    CGPoint center = CGPointZero;
    CGPoint (^pointAddHandler)(CGPoint addPoint) = ^(CGPoint addPoint) {
        return CGPointMake(center.x + addPoint.x, center.y + addPoint.y);
    };
    center = CGPointMake(100, 100);
    center =  pointAddHandler(CGPointMake(10, 10));
    NSLog(@"centerX->%.0f centerY->%.0f",center.x,center.y);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
