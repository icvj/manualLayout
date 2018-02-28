//
//  BViewController.m
//  testLayout
//
//  Created by 祁景天 on 2018/2/11.
//  Copyright © 2018年 联璧科技. All rights reserved.
//

#import "BViewController.h"
#import "UIView+JTAdd.h"
#import "BTableViewCell.h"
#define HYZ_LogMsg(fmt1, ...) NSLog((@"[%s--%d]"fmt1), __FUNCTION__, __LINE__, ##__VA_ARGS__);

@interface BViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic) UITableView *tableView;
@property (nonatomic) NSMutableArray *dataSource;
@end


@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.jt_width, self.view.jt_height) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [tableView registerClass:[BTableViewCell class] forCellReuseIdentifier:@"cellID"];
    [self.view addSubview:tableView];
    self.tableView = tableView;
    
    self.dataSource = [NSMutableArray array];
    for (NSInteger i = 0; i < 20; i++) {
        BModel *model = [BModel new];
        model.title = [NSString stringWithFormat:@"%ld title", (long)i];
        model.content = @"contentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcontentcon";
        [self.dataSource addObject:model];
    }
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];

    NSLog(@"%lu %s %d", (unsigned long)self.hash, __FUNCTION__, __LINE__);
    self.tableView.frame = CGRectMake(0, 0, self.view.jt_width, self.view.jt_height);
}

#pragma mark - <UITableViewDelegate, UITableViewDataSource>

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    BModel *model = [self.dataSource objectAtIndex:indexPath.row];
    if (model.cellHeight == 0) {
        model.cellHeight = [BTableViewCell cellHeightForModel:model];
    }
    
    return model.cellHeight;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID"];
    BModel *model = [self.dataSource objectAtIndex:indexPath.row];
    cell.model = model;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:true];
}


@end
