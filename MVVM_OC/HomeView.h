//
//  HomeView.h
//  MVVM_OC
//
//  Created by zhangmingwei on 2017/2/20.
//  Copyright © 2017年 SpeedX. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeViewModel.h"

@interface HomeView : UIView

@property (nonatomic, strong) HomeViewModel *viewModel;
@property (nonatomic, strong) UIButton      *refreshBtn;    // 刷新按钮
@property (nonatomic, strong) UILabel       *contentLabel;  // 内容Label

- (void)setWithViewModel:(HomeViewModel *)vm;

@end
