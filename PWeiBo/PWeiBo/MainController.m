//
//  MainController.m
//  PWeiBo
//
//  Created by Apple on 2016/12/30.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "MainController.h"

#import "PTableView.h"
#import "PModel.h"

@interface MainController ()

@property(nonatomic,strong)PTableView*tableView;
@property(nonatomic,strong)PModel*model;
@end

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitle:@"微博图文混排"];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self setModel:[PModel model]];
    [self.model loadData];
    
    [self setTableView:[PTableView tableViewWithFrame:self.view.bounds delegate:self.model]];
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
