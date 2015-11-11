//
//  ViewController.m
//  EBTFormatterSpaceTextField
//
//  Created by ebaotong on 15/11/10.
//  Copyright © 2015年 com.csst. All rights reserved.
//

#import "ViewController.h"
#import "EBTFormatterTextFieldWithSpace.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textFieldOneContent;
@property (weak, nonatomic) IBOutlet EBTFormatterTextFieldWithSpace *textFieldTwoContent;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
  [self.textFieldTwoContent formatterTextFieldWithSpace:24 formatterTextFieldHandler:^(NSString *formatterNumber) {
    
      _textFieldOneContent.text = formatterNumber;
    
   }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
