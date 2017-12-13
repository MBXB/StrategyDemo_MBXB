//
//  ViewController.m
//  StrategyDemo_MBXB
//
//  Created by Oboe_b on 2017/12/13.
//  Copyright © 2017年 MBXB-bifujian. All rights reserved.
//博客http://www.2bjs.com
//微博https://weibo.com/u/6342211709
//技术交流q群150731459
//微信搜索iOS编程实战

#import "ViewController.h"
#import "LetterInput.h"
#import "NumberInput.h"
#import "CustomTextField.h"

@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet CustomTextField *letterInput;//字母输入
@property (weak, nonatomic) IBOutlet CustomTextField *numberInput;//数字输入

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.letterInput.delegate = self;
    self.numberInput.delegate = self;
    //初始化
    self.letterInput.inputTextField = [LetterInput new];
    self.numberInput.inputTextField = [NumberInput new];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btnClick:(id)sender {
    [self.view endEditing:true];
}

#pragma mark -代理
- (void)textFieldDidEndEditing:(UITextField *)textField{
    if ([textField isKindOfClass:[CustomTextField class]]) {
        [(CustomTextField *)textField isOK];
    }
}
//- (void)textFieldDidEndEditing:(UITextField *)textField{
//    if(textField == self.letterInput){
//        //验证输入值
//        NSString *outPut = [self letterInput:textField];
//        if (outPut) {
//            NSLog(@"--%@",outPut);
//        }else{
//            NSLog(@"未输入");
//        }
//    }else if(textField == self.numberInput){
//        //验证是数字
//        NSString *outPut = [self numberInput:textField];
//        if (outPut) {
//            NSLog(@"--%@",outPut);
//        }else{
//            NSLog(@"未输入");
//        }
//    }
//}
#pragma mark -验证输入
//- (NSString*)letterInput:(UITextField *)textField{
//    if(textField.text.length == 0){
//        return nil;
//    }
//    //从开头到结尾,有效字符集合a-zA-Z或者更多
//    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[a-zA-Z]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
//    NSUInteger numberOfMateches = [regex numberOfMatchesInString:[textField text] options:NSMatchingAnchored range:NSMakeRange(0, [textField text].length)];
//    NSString *outLetter = nil;
//    //判断,匹配不符合为0
//    if(numberOfMateches == 0){
//        outLetter = @"请重新输入";
//    }else{
//        outLetter = @"输入正确";
//    }
//    return outLetter;
//}
//- (NSString*)numberInput:(UITextField *)textField{
//    if(textField.text.length == 0){
//        return nil;
//    }
//    //从开头到结尾,有效字符集合0-9或者更多
//    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:NSRegularExpressionAnchorsMatchLines error:nil];
//    NSUInteger numberOfMateches = [regex numberOfMatchesInString:[textField text] options:NSMatchingAnchored range:NSMakeRange(0, [textField text].length)];
//    NSString *outLetter = nil;
//    //判断,匹配不符合为0
//    if(numberOfMateches == 0){
//        outLetter = @"请重新输入";
//    }else{
//        outLetter = @"输入正确";
//    }
//    return outLetter;
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
