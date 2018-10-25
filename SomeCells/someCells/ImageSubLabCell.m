//
//  ImageSubLabCell.m
//  NianJiaSport
//
//  Created by ChenFan on 2018/8/28.
//  Copyright © 2018年 muhlenXi. All rights reserved.
//

#import "ImageSubLabCell.h"

@interface ImageSubLabCell ()

@property (nonatomic,strong) UIImageView * icon;
@property (nonatomic,strong) UILabel * titelLab;
@property (nonatomic,strong) UILabel * subLab;

@end

@implementation ImageSubLabCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        UIImageView *icon = [[UIImageView alloc] init];
        icon.contentMode = UIViewContentModeScaleAspectFit;
        self.icon = icon;
        [self.contentView addSubview:self.icon];
        
        UILabel *titelLab = [[UILabel alloc] init];
        titelLab.font = [UIFont systemFontOfSize:14];
        titelLab.textColor = [UIColor blackColor];
        titelLab.textAlignment = NSTextAlignmentLeft;
        titelLab.numberOfLines = 0;
        self.titelLab = titelLab;
        [self.contentView addSubview:self.titelLab];
     
        UILabel *subNameLab = [[UILabel alloc] init];
        subNameLab.font = [UIFont systemFontOfSize:14];
        subNameLab.textColor = [UIColor lightGrayColor];
        subNameLab.textAlignment = NSTextAlignmentRight;
        subNameLab.numberOfLines = 0;
        self.subLab = subNameLab;
        [self.contentView addSubview:self.subLab];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
 
    self.icon.frame = CGRectMake(10,(self.frame.size.height-20)/2.0 , 20, 20);
    self.titelLab.frame = CGRectMake(CGRectGetMaxX(self.icon.frame)+5, 0, 180, self.frame.size.height);
    self.subLab.frame = CGRectMake(self.frame.size.width-130, 0, 100, self.frame.size.height);
    
}

-(void)setTitel:(NSString *)titel{
    _titel = titel;
    self.titelLab.text = _titel;
}

-(void)setSubTitel:(NSString *)subTitel{
    _subTitel = subTitel;
    self.subLab.text = _subTitel;
}

-(void)setIndexPath:(NSIndexPath *)indexPath{
    _indexPath = indexPath;
}

-(void)setIconName:(NSString *)iconName{
    _iconName = iconName;
    self.icon.image = [UIImage imageNamed:_iconName];
}

@end
