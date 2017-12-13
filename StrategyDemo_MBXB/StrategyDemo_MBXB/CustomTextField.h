//
//  CustomTextField.h
//  StrategyDemo_MBXB
//
//  Created by Oboe_b on 2017/12/13.
//  Copyright © 2017年 MBXB-bifujian. All rights reserved.
//博客http://www.2bjs.com
//微博https://weibo.com/u/6342211709
//技术交流q群150731459
//微信搜索iOS编程实战

#import <UIKit/UIKit.h>
#import "InputTextField.h"//聚合关系
@interface CustomTextField : UITextField
@property (nonatomic,strong)InputTextField *inputTextField;//抽象策略类
//验证方法
- (BOOL)isOK;
@end
