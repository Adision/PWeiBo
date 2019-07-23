//
//  MainDataModel.m
//  PWeiBo
//
//  Created by Apple on 2016/12/30.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "MainDataModel.h"

@implementation MainDataModel

+(instancetype)modelWithDict:(NSDictionary *)dict
{
    MainDataModel*model=[[self alloc] init];
    [model setValuesForKeysWithDictionary:dict];
    return model;
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{}

-(void)updateRowHeight
{
    CGSize nameSize = [self.name boundingRectWithSize:CGSizeMake(150, 21) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil].size;
    CGSize contentSize = [self.text boundingRectWithSize:CGSizeMake(CGRectGetWidth([UIScreen mainScreen].bounds)-30, CGFLOAT_MAX) options:NSStringDrawingUsesFontLeading | NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]} context:nil].size;
    CGSize contentImgSize=CGSizeZero;
    
    if (self.picture.length>0) {
        contentImgSize=CGSizeMake(90, 90);
    }
    
    [self setAvatarFrame:CGRectMake(15, 15, 60, 60)];
    [self setNameFrame:CGRectMake(90, 35,nameSize.width, 21)];
    [self setVipFrame:CGRectMake(CGRectGetMaxX(self.nameFrame)+5, CGRectGetMinY(self.nameFrame), 21, 21)];
    [self setContentFrame:CGRectMake(15, CGRectGetMaxY(self.avatarFrame)+15, contentSize.width, contentSize.height)];
    [self setContentImageFrame:CGRectMake(15, CGRectGetMaxY(self.contentFrame)+15, contentImgSize.width, contentImgSize.height)];
    
    CGFloat height=15+CGRectGetHeight(self.avatarFrame)+15+CGRectGetHeight(self.contentFrame)+15+CGRectGetHeight(self.contentImageFrame)+15;
    [self setLineFrame:CGRectMake(0,height,CGRectGetWidth([UIScreen mainScreen].bounds),1)];
    [self setRowHeight:height];
}
@end
