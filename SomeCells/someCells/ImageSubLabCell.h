//
//  ImageSubLabCell.h
//  NianJiaSport
//
//  Created by ChenFan on 2018/8/28.
//  Copyright © 2018年 muhlenXi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageSubLabCell : UITableViewCell

@property (nonatomic,copy) NSString * iconName;
@property (nonatomic,copy) NSString * titel;
@property (nonatomic,copy) NSString * subTitel;
@property (nonatomic,strong) NSIndexPath * indexPath;


@end
