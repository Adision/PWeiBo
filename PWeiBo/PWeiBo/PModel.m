//
//  PModel.m
//  PWeiBo
//
//  Created by Apple on 2016/12/30.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "PModel.h"

#import "MainDataModel.h"
#import "MainTableViewCell.h"


@implementation PModel

+(instancetype)model
{
    PModel*model=[[self alloc] init];
    return model;
}

-(void)loadData
{
    NSString*path=[[NSBundle mainBundle] pathForResource:@"statuses.plist" ofType:nil];
    NSArray*dataArray=[NSArray arrayWithContentsOfFile:path];
    
    NSMutableArray*tempArray=[NSMutableArray array];
    for (NSDictionary*dataDict in dataArray) {
        MainDataModel*model=[MainDataModel modelWithDict:dataDict];
        [tempArray addObject:model];
        
        [model updateRowHeight];
    }
    self.dataArr=[tempArray copy];
}

#pragma mark - Table view delegate -
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MainDataModel*model=self.dataArr[indexPath.row];
    return model.rowHeight;
}

#pragma mark - Table view data soure -
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MainTableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    [cell updataCellWithModel:self.dataArr[indexPath.row]];
    return cell;
}
@end
