//
//  HomeViewModel.m
//  MVVM_OC
//
//  Created by zhangmingwei on 2017/2/22.
//  Copyright © 2017年 SpeedX. All rights reserved.
//

#import "HomeViewModel.h"
#import <KVOController/KVOController.h>
#import <ReactiveCocoa/ReactiveCocoa.h>

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

    // 这里监听更新model的属性
//    [self.KVOController observe:self.homeModel keyPath:@"content" options:NSKeyValueObservingOptionInitial | NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSString *,id> * _Nonnull change) {
//        self.contentString = change[NSKeyValueChangeNewKey];
//    }];
    // 用RAC的kvo
    __weak typeof(self) wSelf = self;
    [RACObserve(self.homeModel, content) subscribeNext:^(id x) {
        NSLog(@"success===%@",x);
        wSelf.contentString = x;
    }];
}

// 这里更新了model的属性
- (void)refreshAction {
    if ([self.homeModel.content isEqualToString:@"改变后的值"]) {
        self.homeModel.content = @"改变前的值";
    } else {
        self.homeModel.content = @"改变后的值";
    }
}

@end
