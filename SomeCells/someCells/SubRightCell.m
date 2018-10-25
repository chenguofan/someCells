//
//  SubRightCell.m
//  NianJiaSport
//
//  Created by ChenFan on 2018/9/26.
//  Copyright © 2018年 muhlenXi. All rights reserved.
//

#import "SubRightCell.h"

@interface SubRightCell ()

@property (nonatomic,strong) UILabel * titelLab;
@property (nonatomic,strong) UIImageView * rightImage;

@end

@implementation SubRightCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        UILabel *titelLab = [[UILabel alloc] init];
        titelLab.font = [UIFont systemFontOfSize:14];
        titelLab.textColor = [UIColor blackColor];
        titelLab.textAlignment = NSTextAlignmentLeft;
        self.titelLab = titelLab;
        [self.contentView addSubview:self.titelLab];
        
        UIImageView *rightImageView = [[UIImageView alloc] init];
        self.rightImage.contentMode = UIViewContentModeScaleAspectFit;
        self.rightImage.layer.masksToBounds = YES;
        self.rightImage = rightImageView;
        [self.contentView addSubview:self.rightImage];
        
    }
    return self;
}

-(void)setTitel:(NSString *)titel{
    _titel = titel;
    self.titelLab.text = _titel;
}

-(void)setIconName:(NSString *)iconName{
    _iconName = iconName;
    self.rightImage.image = [UIImage imageNamed:_iconName];
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat cell_width = self.frame.size.width;
    CGFloat cell_height = self.frame.size.height;
    
    self.titelLab.frame = CGRectMake(15, 0, 200, cell_height);
    self.rightImage.frame = CGRectMake(cell_width - 20 - 21, (cell_height -14)/2.0,21,14);
}

@end
