//
//  Page1ViewController.m
//  kaohe
//
//  Created by 蒲悦蓉 on 2019/8/6.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "Page1ViewController.h"
#import "/Users/puyuerong/Desktop/kaohe/kaohe/Page3ViewController.h"
@interface Page1ViewController ()

@end

@implementation Page1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    UIBarButtonItem *rBar = [[UIBarButtonItem alloc] initWithTitle:@">" style:UIBarButtonItemStyleDone target:self action:@selector(pressChange:)];
    self.navigationItem.rightBarButtonItem = rBar;
}

- (void)pressChange:(UIBarButtonItem*)btn
{
    Page3ViewController *VC = [[Page3ViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
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
