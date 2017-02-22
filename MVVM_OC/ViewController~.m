//
//  ViewController.m
//  MVVM_OC
//
//  Created by zhangmingwei on 2017/2/20.
//  Copyright © 2017年 SpeedX. All rights reserved.
//

#import "ViewController.h"
#import "HomeView.h"
#import "HomeViewModel.h"

@interface ViewController ()

@property (nonatomic, strong) HomeView      *homeView;
@property (nonatomic, strong) HomeViewModel *homeViewModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.homeViewModel = [[HomeViewModel alloc] init];
    
    // 初始化页面View
    [self initHomeView];

}

#pragma 触发请求的方法
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self requestAction];
}

#pragma mark - 初始化view
- (void)initHomeView {
    self.homeView = [[HomeView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.homeView];
}
、
#pragma mark - 网络请求的方法
- (void)requestAction {
    __weak typeof(self) wSelf = self;
    [self.homeViewModel requestAction:^(NSString *str) {
        [wSelf.homeView updateLabel:str];
    }];
}


@end
