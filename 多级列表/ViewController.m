//
//  ViewController.m
//  多级列表
//
//  Created by ap2 on 15/9/15.
//  Copyright (c) 2015年 ap2. All rights reserved.
//

#import "ViewController.h"
#import "MultistageTableView.h"
#import "FriendSectionHeader.h"

@interface ViewController ()<MultistageTableViewDataSource, MultistageTableViewDelegate>
@property (nonatomic, strong) MultistageTableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.tableView = [[MultistageTableView alloc] initWithFrame:CGRectMake(0, 30, 375, 720)];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview: self.tableView];
    self.tableView.tableView.tableFooterView = [UIView new];
    self.tableView.tableView.backgroundColor = [UIColor grayColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInMTableView:(MultistageTableView *)mtableView
{
    return 5;
}

- (CGFloat)m_tableView:(MultistageTableView *)mtableView heightForHeaderInSection:(NSInteger)section
{
    return 60;
}

- (NSInteger)m_tableView:(MultistageTableView *)mtableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UIView *)m_tableView:(MultistageTableView *)mtableView viewForHeaderInSection:(NSInteger)section
{
    FriendSectionHeader *header = [FriendSectionHeader friendSectionHeader];
    header.content.text = @"zzzzzzz";
    header.rightLabel.text = @"10/30";
    
    return header;
}

- (UITableViewCell *)m_tableView:(MultistageTableView *)mtableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [mtableView dequeueReusableCellWithIdentifier: cellID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%zi-%zi", indexPath.section, indexPath.row];
    
    return cell;
}



@end
