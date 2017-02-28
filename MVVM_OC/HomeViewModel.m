//
//  HomeViewModel.m
//  MVVM_OC
//
//  Created by zhangmingwei on 2017/2/22.
//  Copyright © 2017年 SpeedX. All rights reserved.
//

#import "HomeViewModel.h"
#import <KVOController/KVOController.h>
#import "HomeModel.h"

@interface HomeViewModel()

@property (nonatomic, strong) HomeModel *homeModel;

@end

@implementation HomeViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)setWithModel:(HomeModel *)model {
    self.homeModel = model;
    self.contentString = model.content;
}

- (void)refreshAction {
    if ([self.homeModel.content isEqualToString:@"改变后的值"]) {
        self.homeModel.content = @"改变前的值";
    } else {
        self.homeModel.content = @"改变后的值";
    }
    self.contentString = self.homeModel.content;
}


-(void)requestAction:(ResultBlock)resultBlock {
    int x = arc4random() % 100;
    NSString *str = [NSString stringWithFormat:@"测试数据的结果是：%d",x];
    resultBlock(str);
}

@end
