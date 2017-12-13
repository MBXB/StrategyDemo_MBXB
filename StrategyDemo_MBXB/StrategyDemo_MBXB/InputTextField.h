//
//  InputTextField.h
//  StrategyDemo_MBXB
//
//  Created by Oboe_b on 2017/12/13.
//  Copyright © 2017年 MBXB-bifujian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InputTextField : NSObject
//策略输入 YES 通过
//NO 不通过
- (BOOL)inputTextField:(UITextField *)textField;
@property (nonatomic,copy)NSString *attributeInputStr;//属性字符
@end
