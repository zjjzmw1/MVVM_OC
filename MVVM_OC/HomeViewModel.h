//
//  HomeViewModel.h
//  MVVM_OC
//
//  Created by zhangmingwei on 2017/2/22.
//  Copyright © 2017年 SpeedX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HomeModel.h"

@interface HomeViewModel : NSObject

@property (nonatomic, strong) NSString      *contentString; // 为了和View绑定

- (void)setWithModel:(HomeModel *)model;

// 按钮的刷新方法
- (void)refreshAction;

@end
