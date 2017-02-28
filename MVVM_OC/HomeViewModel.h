//
//  HomeViewModel.h
//  MVVM_OC
//
//  Created by zhangmingwei on 2017/2/22.
//  Copyright © 2017年 SpeedX. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HomeModel.h"

typedef void(^ResultBlock)(NSString *str);

@interface HomeViewModel : NSObject


@property (nonatomic, strong) NSString      *contentString; // 为了和View绑定

- (void)setWithModel:(HomeModel *)model;

- (void)refreshAction;

- (void)requestAction:(ResultBlock)resultBlock;


@end
