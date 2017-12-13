//
//  LetterInput.m
//  StrategyDemo_MBXB
//
//  Created by Oboe_b on 2017/12/13.
//  Copyright © 2017年 MBXB-bifujian. All rights reserved.
//

#import "LetterInput.h"

@implementation LetterInput
- (BOOL)inputTextField:(UITextField *)textField{
    if(textField.text.length == 0){
        self.attributeInputStr = @"字母输入为空";
        return nil;
    }
    //从开头到结尾,有效字符集合0-9或者更多
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
    NSUInteger numberOfMateches = [regex numberOfMatchesInString:[textField text] options:NSMatchingAnchored range:NSMakeRange(0, [textField text].length)];
    
    //判断,匹配不符合为0
    if(numberOfMateches == 0){
        self.attributeInputStr = @"请重新输入";
    }else{
        self.attributeInputStr = @"输入正确";
    }
    return self.attributeInputStr == nil ? YES : NO;
}
@end
