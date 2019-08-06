//
//  Cell2TableViewCell.m
//  kaohe
//
//  Created by 蒲悦蓉 on 2019/8/6.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "Cell2TableViewCell.h"

@implementation Cell2TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self.touImageView = [[UIImageView alloc] init];
    self.themeLabel = [[UILabel alloc] init];
    self.picture1ImageView = [[UIImageView alloc] init];
    self.picture2ImageView = [[UIImageView alloc] init];
    self.locationLabel = [[UILabel alloc] init];
    self.timeLabel = [[UILabel alloc] init];
    [self.contentView addSubview:self.touImageView];
    [self.contentView addSubview:self.themeLabel];
    [self.contentView addSubview:self.picture1ImageView];
    [self.contentView addSubview:self.picture2ImageView];
    [self.contentView addSubview:self.locationLabel];
    [self.contentView addSubview:self.timeLabel];
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];    /*杭高140*/
    self.touImageView.frame = CGRectMake(0, 0, 30, 30);
    self.themeLabel.frame = CGRectMake(40, 5, 280, 25);
    self.picture1ImageView.frame = CGRectMake(40, 40, 50, 50);
    self.picture2ImageView.frame = CGRectMake(100, 40, 50, 50);
    self.locationLabel.frame =CGRectMake(40, 100, 280, 20);
    self.timeLabel.frame = CGRectMake(40, 120, 280, 20);
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
