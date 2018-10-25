//
//  SwitchCell.h
//  
//
//  Created by ChenFan on 2018/8/28.
//

#import <UIKit/UIKit.h>

@interface SwitchCell : UITableViewCell
@property (nonatomic,strong) NSIndexPath * indexPath;
@property (nonatomic,copy) NSString * titel;
@property (nonatomic,assign) BOOL  isOn;

@property (nonatomic,copy) void(^swichCellBlock)(UISwitch *sender);

@end
