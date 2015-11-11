//
//  EBTFormatterSpaceTextField.h
//  EBTFormatterSpaceTextField
//
//  Created by ebaotong on 15/11/10.
//  Copyright © 2015年 com.csst. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^EBTFormatterTextFieldCompleteHandler)(NSString *formatterNumber);

@interface EBTFormatterTextFieldWithSpace : UITextField

{
    EBTFormatterTextFieldCompleteHandler  completeHandler;

}
/**
 *  主要用于银行卡号格式化每隔四位用“ ”空格进行分割
 *
 *  @param formatterLength  银行卡号长度
 *  @param textFieldHandler 返回格式化后的银行卡号
 */
- (void)formatterTextFieldWithSpace:(NSInteger)formatterLength formatterTextFieldHandler:(EBTFormatterTextFieldCompleteHandler)textFieldHandler;




@end
