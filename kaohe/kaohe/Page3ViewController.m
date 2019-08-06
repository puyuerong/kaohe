//
//  Page3ViewController.m
//  kaohe
//
//  Created by 蒲悦蓉 on 2019/8/6.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "Page3ViewController.h"
#import "/Users/puyuerong/Desktop/kaohe/kaohe/Cell1TableViewCell.h"
#import "/Users/puyuerong/Desktop/kaohe/kaohe/Cell2TableViewCell.h"
@interface Page3ViewController ()
@property UITableView *tableView;
@property NSMutableArray *array;
@end

@implementation Page3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"朋友圈";
    UIBarButtonItem *lBar = [[UIBarButtonItem alloc] initWithTitle:@">" style:UIBarButtonItemStylePlain target:self action:@selector(pressChange:)];
    self.navigationItem.leftBarButtonItem = lBar;
    self.view.backgroundColor = [UIColor whiteColor];
    _tableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    [_tableView registerClass:[Cell1TableViewCell class] forCellReuseIdentifier:@"cell1"];
    [_tableView registerClass:[Cell2TableViewCell class] forCellReuseIdentifier:@"cell2"];
    _array = [[NSMutableArray alloc] initWithObjects:@"十七", @"我的童年", @"源", @"随想", @"吆不到台", @"滚烫的青春", @"长大以后的世界", @"世上没有真正的感同身受", @"只要有想见的人就不是孤身一人", @"姑娘", nil];
     _tableView.delegate = self;
     _tableView.dataSource = self;
    
    UIImageView *backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 180)];
    backImageView.image = [UIImage imageNamed:@"4.JPG"];
    UIImageView *touImageView = [[UIImageView alloc] initWithFrame:CGRectMake(260, 155, 50, 50)];
    touImageView.image = [UIImage imageNamed:@"2.JPG"];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(245, 170, 10, 20)];
    label.text = @"Y";
    UIView *iView = [[UIView alloc] initWithFrame:CGRectMake(0, 50, 320, 220)];
    [iView addSubview:backImageView];
    [iView addSubview:touImageView];
    [iView addSubview:label];
    _tableView.tableHeaderView = iView;
    [self.view addSubview:_tableView];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 210;
    } else {
        return 10;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 10;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section%2 == 0) {
        Cell1TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1" forIndexPath:indexPath];
        cell.touImageView.image = [UIImage imageNamed:@"1.JPG"];
        cell.themeLabel.text = _array[indexPath.section];
        cell.pictureImageView.image = [UIImage imageNamed:@"2.JPG"];
        cell.locationLabel.text = @"西安邮电大学";
        cell.timeLabel.text = @"1分钟前";
        return cell;
    } else {
        Cell2TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell2" forIndexPath:indexPath];
        cell.touImageView.image = [UIImage imageNamed:@"1.JPG"];
        cell.themeLabel.text = _array[indexPath.section];
        cell.picture1ImageView.image = [UIImage imageNamed:@"4.JPG"];
        cell.picture2ImageView.image = [UIImage imageNamed:@"3.JPG"];
        cell.locationLabel.text = @"西安邮电大学";
        cell.timeLabel.text = @"1分钟前";
        return cell;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section % 2 == 0) {
       return 220;
    } else {
        return 150;
    }
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
