//
//  HomeViewModel.m
//  MVVM_OC
//
//  Created by zhangmingwei on 2017/2/22.
//  Copyright © 2017年 SpeedX. All rights reserved.
//

#import "HomeViewModel.h"

@implementation HomeViewModel

-(void)requestAction:(ResultBlock)resultBlock {
    int x = arc4random() % 100;
    NSString *str = [NSString stringWithFormat:@"测试数据的结果是：%d",x];
    resultBlock(str);
}

@end
