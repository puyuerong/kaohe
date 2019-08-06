//
//  RegisterViewController.m
//  kaohe
//
//  Created by 蒲悦蓉 on 2019/8/6.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    _nameTextFiled = [[UITextField alloc] initWithFrame:CGRectMake(50, 100, 220, 40)];
    _nameTextFiled.placeholder = @"请输入用户名";
    _nameTextFiled.keyboardType = UIKeyboardTypeDefault;
    _nameTextFiled.delegate = self;
    _nameTextFiled.backgroundColor = [UIColor whiteColor];
    
    _padTextFiled = [[UITextField alloc] initWithFrame:CGRectMake(50, 150, 220, 40)];
    _padTextFiled.placeholder = @"请输入密码";
    _padTextFiled.keyboardType = UIKeyboardTypeDefault;
    _padTextFiled.delegate = self;
    _padTextFiled.backgroundColor = [UIColor whiteColor];
    
    UIButton *sureButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [sureButton setFrame:CGRectMake(120, 250, 80, 30)];
    [sureButton setTitle:@"确认注册" forState:UIControlStateNormal];
    [sureButton addTarget:self action:@selector(pressSure:) forControlEvents:UIControlEventTouchUpInside];
    [sureButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
     [self.view addSubview:_nameTextFiled];
     [self.view addSubview:_padTextFiled];
     [self.view addSubview:sureButton];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_nameTextFiled resignFirstResponder];
    [_padTextFiled resignFirstResponder];
}

- (void)pressSure:(UIButton*)btn
{
    [self.delegate pushNameText:_nameTextFiled.text];
    [self.delegate pushPsdText:_padTextFiled.text];
    [self dismissViewControllerAnimated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
