//
//  Page3ViewController.h
//  kaohe
//
//  Created by 蒲悦蓉 on 2019/8/6.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Page3ViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
@property UIImageView *touImageView;
@property UILabel *themeLabel;
@property UIImageView *pictureImageView;
@property UILabel *locationLabel;
@property UILabel *timeLabel;
@end

NS_ASSUME_NONNULL_END
