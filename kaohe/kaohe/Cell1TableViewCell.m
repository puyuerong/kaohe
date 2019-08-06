//
//  Cell1TableViewCell.m
//  kaohe
//
//  Created by 蒲悦蓉 on 2019/8/6.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "Cell1TableViewCell.h"

@implementation Cell1TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self.touImageView = [[UIImageView alloc] init];
    self.themeLabel = [[UILabel alloc] init];
    self.pictureImageView = [[UIImageView alloc] init];
    self.locationLabel = [[UILabel alloc] init];
    self.timeLabel = [[UILabel alloc] init];
    [self.contentView addSubview:self.touImageView];
    [self.contentView addSubview:self.themeLabel];
    [self.contentView addSubview:self.pictureImageView];
    [self.contentView addSubview:self.locationLabel];
    [self.contentView addSubview:self.timeLabel];
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];    /*杭高220*/
    self.touImageView.frame = CGRectMake(0, 0, 30, 30);
    self.themeLabel.frame = CGRectMake(40, 5, 280, 25);
    self.pictureImageView.frame = CGRectMake(40, 40, 80, 120);
    self.locationLabel.frame =CGRectMake(40, 170, 280, 20);
    self.timeLabel.frame = CGRectMake(40, 200, 280, 20);
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    
}

@end
