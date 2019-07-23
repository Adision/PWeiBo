//
//  MainTableViewCell.h
//  PWeiBo
//
//  Created by Apple on 2016/12/30.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MainDataModel.h"

@interface MainTableViewCell : UITableViewCell

@property(nonatomic,strong)UIImageView*avatarImageView;
@property(nonatomic,strong)UILabel*nameLabel;
@property(nonatomic,strong)UIImageView*vipImageView;
@property(nonatomic,strong)UILabel*contentLabel;
@property(nonatomic,strong)UIImageView*contentImageView;
@property(nonatomic,strong)UIView*line;

-(void)updataCellWithModel:(MainDataModel*)model;

@end
