//
//  ImageSwitchCell.m
//  NianJiaSport
//
//  Created by ChenFan on 2018/8/28.
//  Copyright © 2018年 muhlenXi. All rights reserved.
//

#import "ImageSwitchCell.h"

@interface ImageSwitchCell ()

@property (nonatomic,strong) UIImageView * icon;
@property (nonatomic,strong) UILabel * titelLab;
@property (nonatomic,strong) UISwitch * swtch;

@end

@implementation ImageSwitchCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        UIImageView *icon = [[UIImageView alloc] init];
        self.icon = icon;
        self.icon.contentMode = UIViewContentModeScaleAspectFit;
        [self.contentView addSubview:self.icon];
        
        UILabel *titelLab = [[UILabel alloc] init];
        titelLab.font = [UIFont systemFontOfSize:14];
        titelLab.textColor = [UIColor blackColor];
        titelLab.textAlignment = NSTextAlignmentLeft;
        titelLab.numberOfLines = 0;
        self.titelLab = titelLab;
        [self.contentView addSubview:self.titelLab];
        
        UISwitch *swtch = [[UISwitch alloc] init];
        [swtch setOnTintColor:[UIColor greenColor]];
        [swtch addTarget:self action:@selector(swtchChange:) forControlEvents:UIControlEventValueChanged];
        self.swtch = swtch;
        self.accessoryView = self.swtch;
    }
    return self;
}

-(void)setIconName:(NSString *)iconName{
    _iconName = iconName;
    self.icon.image = [UIImage imageNamed:_iconName];
}

-(void)setTitel:(NSString *)titel{
    _titel = titel;
    self.titelLab.text = _titel;
}

-(void)setIndexPath:(NSIndexPath *)indexPath{
    _indexPath = indexPath;
    self.swtch.tag = _indexPath.row;
}

-(void)setIsOn:(BOOL)isOn{
    _isOn = isOn;
    [self.swtch setOn:_isOn];
}

-(void)swtchChange:(UISwitch *)sender{
    if (self.imageSwitchCellBlock) {
        self.imageSwitchCellBlock(sender, sender.tag);
    }
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    self.icon.frame = CGRectMake(10, (self.frame.size.height-20)/2.0, 20, 20);
    self.titelLab.frame = CGRectMake(CGRectGetMaxX(self.icon.frame)+5, 0, 200, self.frame.size.height);
}

@end
