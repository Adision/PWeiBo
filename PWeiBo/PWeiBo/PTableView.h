//
//  PTableView.h
//  PWeiBo
//
//  Created by Apple on 2016/12/30.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PTableView : UITableView

+(instancetype)tableViewWithFrame:(CGRect)frame delegate:(id<UITableViewDelegate,UITableViewDataSource>)delegate;

@end
