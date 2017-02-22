//
//  HomeViewModel.h
//  MVVM_OC
//
//  Created by zhangmingwei on 2017/2/22.
//  Copyright © 2017年 SpeedX. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^ResultBlock)(NSString *str);

@interface HomeViewModel : NSObject

- (void)requestAction:(ResultBlock)resultBlock;

@end
