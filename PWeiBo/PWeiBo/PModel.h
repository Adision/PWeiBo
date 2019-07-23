//
//  PModel.h
//  PWeiBo
//
//  Created by Apple on 2016/12/30.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PModel : NSObject<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)NSArray*dataArr;

+(instancetype)model;
-(void)loadData;

@end
