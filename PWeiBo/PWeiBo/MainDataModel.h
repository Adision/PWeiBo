//
//  MainDataModel.h
//  PWeiBo
//
//  Created by Apple on 2016/12/30.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MainDataModel : NSObject

@property(nonatomic,copy)NSString*picture;
@property(nonatomic,copy)NSString*text;
@property(nonatomic,copy)NSString*icon;
@property(nonatomic,copy)NSString*name;
@property(nonatomic,copy)NSNumber*vip;

@property(nonatomic,assign)CGRect avatarFrame;
@property(nonatomic,assign)CGRect nameFrame;
@property(nonatomic,assign)CGRect vipFrame;
@property(nonatomic,assign)CGRect contentFrame;
@property(nonatomic,assign)CGRect contentImageFrame;
@property(nonatomic,assign)CGRect lineFrame;
@property(nonatomic,assign)CGFloat rowHeight;

+(instancetype)modelWithDict:(NSDictionary*)dict;
-(void)updateRowHeight;


@end
