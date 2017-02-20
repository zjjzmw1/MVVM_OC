//
//  ViewController.m
//  MVVM_OC
//
//  Created by zhangmingwei on 2017/2/20.
//  Copyright © 2017年 SpeedX. All rights reserved.
//

#import "ViewController.h"
#import "HomeView.h"

@interface ViewController ()

@property (nonatomic, strong) HomeView      *homeView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 初始化页面View
    [self initHomeView];

}

#pragma mark - 初始化view
- (void)initHomeView {
    self.homeView = [[HomeView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.homeView];
}

- (void)requestAction {
    NSString *title = [NSString stringWithFormat:@"刷新后数据为：%d",(int)(arc4random() * 100)];
    self.homeView.contentLabel.text = title;
    
}


@end
