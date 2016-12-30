//
//  ZFDownloaderOperation.h
//  ZFWebImage
//
//  Created by Mufeng on 2016/12/31.
//  Copyright © 2016年 ZMF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZFDownloaderOperation : NSOperation

/// 接收viewController传过来的图片地址
@property (nonatomic, copy) NSString *URLString;

/// 接收viewController传入的下载完成的代码块
@property (nonatomic, copy) void (^successBlock)(UIImage *image);

@end
