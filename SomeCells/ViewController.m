//
//  ViewController.m
//  SomeCells
//
//  Created by ChenFan on 2018/10/24.
//  Copyright © 2018年 steven. All rights reserved.
//

#import "ViewController.h"
#import "ImageSubLabCell.h"
#import "ImageSwitchCell.h"
#import "SubNameCell.h"
#import "SubRightCell.h"
#import "SwitchCell.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView * tableView;

@end

@implementation ViewController

-(UITableView *)tableView{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableHeaderView = [UIView new];
        _tableView.tableHeaderView = [UIView new];
    }
    return _tableView;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.tableView];

}

#pragma mark --tableView

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 6;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSInteger row = indexPath.row;
    if (row == 0) {
        static NSString *reusedID0 = @"reusedID0";
        ImageSubLabCell *cell = [tableView dequeueReusableCellWithIdentifier:reusedID0];
        if (!cell) {
            cell = [[ImageSubLabCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID0];
        }
        cell.indexPath = indexPath;
        cell.iconName = @"0.jpg";
        cell.titel = @"0";
        cell.subTitel = @"0.0";
        
        return cell;
        
    }else if (row == 1){
        static NSString *reusedID1 = @"reusedID1";
        ImageSwitchCell *cell = [tableView dequeueReusableCellWithIdentifier:reusedID1];
        if (!cell) {
            cell = [[ImageSwitchCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID1];
        }
        cell.indexPath = indexPath;
        cell.iconName = @"1.jpg";
        cell.titel = @"1";
        [cell setImageSwitchCellBlock:^(id obj, NSInteger index) {
            NSLog(@"开关开关");
        }];
        return cell;
        
    }else if (row == 2){
        static NSString *reusedID2 = @"reusedID2";
        SwitchCell *cell = [tableView dequeueReusableCellWithIdentifier:reusedID2];
        if (!cell) {
            cell = [[SwitchCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID2];
        }
        cell.titel = @"2";
        [cell setSwichCellBlock:^(UISwitch *sender) {
            NSLog(@"开关开关");
        }];
        return cell;
    }
    
    else if (row == 3){
        static NSString *reusedID3 = @"reusedID3";
        SubRightCell *cell = [tableView dequeueReusableCellWithIdentifier:reusedID3];
        if (!cell) {
            cell = [[SubRightCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID3];
        }
        cell.titel = @"3";
        cell.iconName = @"3.jpg";
        
        return cell;
        
    }else if (row == 4){
        static NSString *reusedID4 = @"reusedID4";
        SubNameCell *cell = [tableView dequeueReusableCellWithIdentifier:reusedID4];
        if (!cell) {
            cell = [[SubNameCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID4];
        }
        cell.indexPath = indexPath;
        cell.titel = @"4";
        cell.subTitel = @"4.0";
        
        return cell;
        
    }else{
        static NSString *reusedID5 = @"reusedID5";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reusedID5];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedID5];
        }
        cell.textLabel.text = @"5";
        cell.imageView.image = [UIImage imageNamed:@"5.jpg"];
        
        return cell;
    }
    return nil;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

@end
