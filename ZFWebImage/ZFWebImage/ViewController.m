//
//  ViewController.m
//  ZFWebImage
//
//  Created by Mufeng on 2016/12/31.
//  Copyright © 2016年 ZMF. All rights reserved.
//

#import "ViewController.h"
#import "ZFDownloaderOperation.h"

@interface ViewController ()

@property (nonatomic, strong) NSOperationQueue *queue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.queue = [[NSOperationQueue alloc] init];
    
    ZFDownloaderOperation *downloaderOP = [[ZFDownloaderOperation alloc] init];
    
    [self.queue addOperation:downloaderOP];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
