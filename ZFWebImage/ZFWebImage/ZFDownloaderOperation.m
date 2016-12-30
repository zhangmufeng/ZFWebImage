//
//  ZFDownloaderOperation.m
//  ZFWebImage
//
//  Created by Mufeng on 2016/12/31.
//  Copyright © 2016年 ZMF. All rights reserved.
//

#import "ZFDownloaderOperation.h"

@implementation ZFDownloaderOperation

/// 重写main方法，所有操作的入口，相当于教室的门，NSInvocationOperation和NSBlockOperation执行任务时，一定调用main方法
- (void)main {
    NSLog(@"%@", [NSThread currentThread]); // 在子线程执行
    
    // 下载  -- 子线程
    NSURL *URL = [NSURL URLWithString:self.URLString];
    NSData *data = [NSData dataWithContentsOfURL:URL];
    UIImage *image = [UIImage imageWithData:data];
    
    // 把image传到控制器中去显示
    if (self.successBlock != nil) {
        
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.successBlock(image);
        }];
    }
}

@end
