//
//  ImageSwitchCell.h
//  NianJiaSport
//
//  Created by ChenFan on 2018/8/28.
//  Copyright © 2018年 muhlenXi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageSwitchCell : UITableViewCell

@property (nonatomic,copy) NSString * iconName;
@property (nonatomic,copy) NSString * titel;
@property (nonatomic,strong) NSIndexPath * indexPath;
@property (nonatomic,assign) BOOL  isOn;

@property (nonatomic,copy) void(^imageSwitchCellBlock)(id obj,NSInteger index);

@end


