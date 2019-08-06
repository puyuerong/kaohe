//
//  ViewController.m
//  kaohe
//
//  Created by 蒲悦蓉 on 2019/8/6.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "ViewController.h"
#import "/Users/puyuerong/Desktop/kaohe/kaohe/AppDelegate.h"
#import "/Users/puyuerong/Desktop/kaohe/kaohe/RegisterViewController.h"
#import "/Users/puyuerong/Desktop/kaohe/kaohe/Page1ViewController.h"
#import "/Users/puyuerong/Desktop/kaohe/kaohe/Page2ViewController.h"
#import "/Users/puyuerong/Desktop/kaohe/kaohe/Page3ViewController.h"
#import "/Users/puyuerong/Desktop/kaohe/kaohe/Page4ViewController.h"
#import "/Users/puyuerong/Desktop/kaohe/kaohe/Page5ViewController.h"
@interface ViewController ()
@property UITextField *nameTextFiled;
@property UITextField *padTextFiled;
@property NSString *nameText;
@property NSString *psdText;
@end

@implementation ViewController

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
    
    UIButton *landButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [landButton setFrame:CGRectMake(50, 250, 50, 20)];
    [landButton setTitle:@"登录" forState:UIControlStateNormal];
    [landButton addTarget:self action:@selector(pressLand:) forControlEvents:UIControlEventTouchUpInside];
    [landButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    UIButton *registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [registerButton setFrame:CGRectMake(220, 250, 50, 20)];
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    [registerButton addTarget:self action:@selector(pressRegister:) forControlEvents:UIControlEventTouchUpInside];
    [registerButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    
    [self.view addSubview:_nameTextFiled];
    [self.view addSubview:_padTextFiled];
    [self.view addSubview:landButton];
    [self.view addSubview:registerButton];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_nameTextFiled resignFirstResponder];
    [_padTextFiled resignFirstResponder];
}

- (void)pressLand:(UIButton*)btn
{
    if ((([_nameTextFiled.text isEqualToString: @"iOSnb123"]) && ( [_padTextFiled.text isEqualToString: @"123456789"])) || (([_nameTextFiled.text isEqualToString:_nameText]) && ([_padTextFiled.text isEqualToString:_psdText]))){
        AppDelegate *app = [[AppDelegate alloc] init];
        Page1ViewController *VC1 = [[Page1ViewController alloc] init];
        UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:VC1];
        VC1.tabBarItem.title = @"page1";
        
        Page2ViewController *VC2 = [[Page2ViewController alloc] init];
        UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:VC2];
        
        Page3ViewController *VC3 = [[Page3ViewController alloc] init];
         UINavigationController *nav3 = [[UINavigationController alloc] initWithRootViewController:VC3];
        
        Page4ViewController *VC4 = [[Page4ViewController alloc] init];
         UINavigationController *nav4 = [[UINavigationController alloc] initWithRootViewController:VC4];
        
        Page4ViewController *VC5 = [[Page4ViewController alloc] init];
        UINavigationController *nav5 = [[UINavigationController alloc] initWithRootViewController:VC5];
        
        NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:nav1, nav2, nav3, nav4, nav5, nil];
        UITabBarController *tabBarController = [[UITabBarController alloc] init];
        
        [self removeFromParentViewController];
        tabBarController.viewControllers = array;
        self.view.window.rootViewController = tabBarController;
        [app.window makeKeyAndVisible];
       
    }
    
}
- (void)pressRegister:(UIButton*)btn
{
    RegisterViewController *reVC = [[RegisterViewController alloc] init];
    reVC.delegate = self;
    self.nameText = reVC.nameTextFiled.text;
    self.psdText = reVC.padTextFiled.text;
    [self presentViewController:reVC animated:YES completion:nil];
}

- (void)pushNameText:(NSString *)nameText
{
    _nameText = nameText;
    _nameTextFiled.text = nameText;
}
- (void)pushPsdText:(NSString *)psdText
{
    _psdText = psdText;
    _padTextFiled.text = psdText;
}
@end
