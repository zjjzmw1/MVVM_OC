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
#import "HomeModel.h"

@interface ViewController ()

@property (nonatomic, strong) HomeView      *homeView;
@property (nonatomic, strong) HomeViewModel *homeViewModel;
@property (nonatomic, strong) HomeModel     *homeModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.homeView = [[HomeView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.homeView];
    
    self.homeViewModel = [[HomeViewModel alloc] init];
    self.homeModel   = [[HomeModel alloc] init];
    
    // 建立绑定关系
    [self.homeViewModel setWithModel:self.homeModel];
    [self.homeView setWithViewModel:self.homeViewModel];
}



@end
