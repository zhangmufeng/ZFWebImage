//
//  ViewController.m
//  ZFWebImage
//
//  Created by Mufeng on 2016/12/31.
//  Copyright © 2016年 ZMF. All rights reserved.
//   http://www.7160.com/meinv/23155/index_6.html

#import "ViewController.h"
#import "ZFDownloaderOperation.h"

@interface ViewController ()

@property (nonatomic, strong) NSOperationQueue *queue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.实例化队列
    self.queue = [[NSOperationQueue alloc] init];
    
    // 2.创建自定义操作对象
    ZFDownloaderOperation *downloaderOP = [[ZFDownloaderOperation alloc] init];
    
    // 在控制器中把地址传给下载器 -- 不能写在添加操作之后，因为那样已经执行过main了
    downloaderOP.URLString = @"http://www.7160.com/meinv/23155/index_6.html";
    
    // 定义等待执行的代码块 -- 刷新UI
//    void (^successBlock)() = ^(UIImage *image){
//        
//        NSLog(@"代码块被执行了");
//        
//    };
//    downloaderOP.successBlock = successBlock;
    
    [downloaderOP setSuccessBlock:^(UIImage *image) {
        NSLog(@"代码块被执行了");
    }];
    // 3.把操作对象添加到队列  -- 这句话先调用start方法，再调main方法
    [self.queue addOperation:downloaderOP];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
