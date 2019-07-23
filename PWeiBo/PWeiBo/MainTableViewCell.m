//
//  MainTableViewCell.m
//  PWeiBo
//
//  Created by Apple on 2016/12/30.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "MainTableViewCell.h"

@implementation MainTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setAvatarImageView:[[UIImageView alloc] init]];
        [self.avatarImageView setClipsToBounds:YES];
        [self.avatarImageView.layer setCornerRadius:30];
        [self.contentView addSubview:self.avatarImageView];
        
        [self setNameLabel:[[UILabel alloc] init]];
        [self.nameLabel setFont:[UIFont systemFontOfSize:17]];
        [self.nameLabel setTextColor:[UIColor darkGrayColor]];
        [self.contentView addSubview:self.nameLabel];
        
        [self setVipImageView:[[UIImageView alloc] init]];
        [self.vipImageView setContentMode:UIViewContentModeCenter];
        [self.contentView addSubview:self.vipImageView];
        
        [self setContentLabel:[[UILabel alloc] init]];
        [self.contentLabel setFont:[UIFont systemFontOfSize:15]];
        [self.contentLabel setNumberOfLines:0];
        [self.contentLabel setLineBreakMode:NSLineBreakByWordWrapping];
        [self.contentView addSubview:self.contentLabel];
        
        [self setContentImageView:[[UIImageView alloc] init]];
        [self.contentView addSubview:self.contentImageView];
        
        [self setLine:[[UIView alloc] init]];
        [self.line setBackgroundColor:[UIColor lightGrayColor]];
        [self.contentView addSubview:self.line];
    }
    return self;
}

-(void)updataCellWithModel:(MainDataModel *)model
{
    //完成cell动态高度调整
    [self.avatarImageView setFrame:model.avatarFrame];
    [self.nameLabel setFrame:model.nameFrame];
    [self.vipImageView setFrame:model.vipFrame];
    [self.contentLabel setFrame:model.contentFrame];
    [self.contentImageView setFrame:model.contentImageFrame];
    [self.line setFrame:model.lineFrame];
    
    //完成数据更新
    [self.avatarImageView setImage:[UIImage imageNamed:model.icon]];
    [self.nameLabel setText:model.name];
    [self.contentLabel setText:model.text];
    if (model.picture.length>0) {
        [self.contentImageView setImage:[UIImage imageNamed:model.picture]];
    }
    [self.vipImageView setHidden:(model.vip.integerValue==1)];
}
@end
