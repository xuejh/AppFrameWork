//
//  RecentViewController.m
//  AppFramework
//
//  Created by 薛锦辉 on 2018/8/13.
//  Copyright © 2018年 薛锦辉. All rights reserved.
//

#import "RecentViewController.h"
#import "RecentCellView.h"


@interface RecentViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong) UITableView *tableView;

@end

@implementation RecentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addSubView];
    
}


- (void)addSubView {
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, self.view.frame.origin.y, self.view.frame.size.width, self.view.frame.size.height)];
    self.tableView.tableFooterView = [[UIView alloc] init];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.view addSubview:self.tableView];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *identifier = @"ChatPlainTextCell";
    RecentCellView *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[RecentCellView alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.title =[NSString stringWithFormat:@"title-%ld",indexPath.row];
    cell.content = [NSString stringWithFormat:@"content-%ld",indexPath.row];
    cell.timeText= [NSString stringWithFormat:@"time-%ld",indexPath.row];
    cell.rightButtonTitle = @"关注";
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
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
