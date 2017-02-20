//
//  HomeView.m
//  MVVM_OC
//
//  Created by zhangmingwei on 2017/2/20.
//  Copyright © 2017年 SpeedX. All rights reserved.
//

#import "HomeView.h"

@implementation HomeView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    
    // 刷新按钮
    self.refreshBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.refreshBtn.frame = CGRectMake(0, 0, 100, 50);
    self.refreshBtn.center = CGPointMake(self.center.x, 100);
    self.refreshBtn.backgroundColor = [UIColor redColor];
    [self.refreshBtn setTitle:@"更新背景色" forState:UIControlStateNormal];
    [self.refreshBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.refreshBtn.titleLabel.font = [UIFont systemFontOfSize:18];
    [self.refreshBtn addTarget:self action:@selector(refreshAction) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.refreshBtn];
    
    // 内容label
    self.contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 300, self.frame.size.width, 100)];
    [self addSubview:self.contentLabel];
    self.contentLabel.backgroundColor = [UIColor blueColor];
    self.contentLabel.textColor = [UIColor whiteColor];
    self.contentLabel.numberOfLines = 0;
    [self.contentLabel sizeToFit];
    self.contentLabel.textAlignment = NSTextAlignmentCenter;
    
    return self;
}

// 刷新方法
- (void)refreshAction {
    if ([self.backgroundColor isEqual:[UIColor whiteColor]]) {
        self.backgroundColor = [UIColor grayColor];
    } else {
        self.backgroundColor = [UIColor whiteColor];
    }
}

@end
