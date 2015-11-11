# EBTFormatterSpaceTextField
银行卡号每隔四位用空格分割格式化(支持block回调)
#使用方法: 
1: 先把 EBTFormatterSpaceTextField.h和.m文件加入到工程中
2: 在sb或者xib界面上布局一个UITextField,将其class设置为EBTFormatterSpaceTextField

3:拖线条并调用它对应的方法

[self.textFieldTwoContent formatterTextFieldWithSpace:24 formatterTextFieldHandler:^(NSString *formatterNumber) {
    
      _textFieldOneContent.text = formatterNumber;
    
   }];







#效果演示图
![Image](https://github.com/KBvsMJ/EBTFormatterSpaceTextField/blob/master/demo/1.gif)
