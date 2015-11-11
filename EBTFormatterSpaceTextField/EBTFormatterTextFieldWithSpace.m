//
//  EBTFormatterSpaceTextField.m
//  EBTFormatterSpaceTextField
//
//  Created by ebaotong on 15/11/10.
//  Copyright © 2015年 com.csst. All rights reserved.
//

#import "EBTFormatterTextFieldWithSpace.h"


@interface EBTFormatterTextFieldWithSpace ()<UITextFieldDelegate>
{
    NSInteger formatterTextFieldLength;//设置格式化数字的长度
}
@end

@implementation EBTFormatterTextFieldWithSpace

- (void)awakeFromNib
{
    self.delegate = self;
    self.keyboardType = UIKeyboardTypeNumberPad;
    
}
- (void)formatterTextFieldWithSpace:(NSInteger)formatterLength formatterTextFieldHandler:(EBTFormatterTextFieldCompleteHandler)textFieldHandler;

{
    formatterTextFieldLength = formatterLength;
    completeHandler = textFieldHandler;

}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *text = [textField text];
    NSCharacterSet *characterSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789\b"];
    string = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    if ([string rangeOfCharacterFromSet:[characterSet invertedSet]].location != NSNotFound)
    {
        return NO;
    }
    text = [text stringByReplacingCharactersInRange:range withString:string];
    text = [text stringByReplacingOccurrencesOfString:@" " withString:@""];
    NSString *newString = @"";
    while (text.length > 0)
    {
        
        NSString *subString = [text substringToIndex:MIN(text.length, 4)];
        newString = [newString stringByAppendingString:subString];
        if (subString.length == 4)
        {
            newString = [newString stringByAppendingString:@" "];
        }
        text = [text substringFromIndex:MIN(text.length, 4)];
    }
    newString = [newString stringByTrimmingCharactersInSet:[characterSet invertedSet]];
    if (newString.length >= formatterTextFieldLength)
    {
        [textField resignFirstResponder];
        return NO;
    }
    
    [textField setText:newString];
   
     if(completeHandler)
     {
         completeHandler(textField.text);
     }
    
    return NO;
    
}

@end
