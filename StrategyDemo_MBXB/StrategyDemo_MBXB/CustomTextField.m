//
//  CustomTextField.m
//  StrategyDemo_MBXB
//
//  Created by Oboe_b on 2017/12/13.
//  Copyright © 2017年 MBXB-bifujian. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField
- (BOOL)isOK{
   BOOL result = [self.inputTextField inputTextField:self];
    if(!result){
        NSLog(@"--%@",self.inputTextField.attributeInputStr);
    }
    return result;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
