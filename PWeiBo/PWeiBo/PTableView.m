//
//  PTableView.m
//  PWeiBo
//
//  Created by Apple on 2016/12/30.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "PTableView.h"

#import "MainTableViewCell.h"

@implementation PTableView

+(instancetype)tableViewWithFrame:(CGRect)frame delegate:(id<UITableViewDelegate,UITableViewDataSource>)delegate
{
    PTableView*tableView=[[self alloc] initWithFrame:frame style:UITableViewStylePlain];
    [tableView setDataSource:delegate];
    [tableView setDelegate:delegate];
    tableView.tableFooterView=[[UIView alloc] initWithFrame:CGRectMake(0, 0,CGRectGetWidth([UIScreen mainScreen].bounds), 15)];
    [tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    [tableView registerClass:[MainTableViewCell class] forCellReuseIdentifier:@"cell"];
    return tableView;
}

@end
