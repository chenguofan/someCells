//
//  SubNameCell.m
//  NianJiaSport
//
//  Created by ChenFan on 2018/8/28.
//  Copyright © 2018年 muhlenXi. All rights reserved.
//

#import "SubNameCell.h"

@interface SubNameCell ()

@property (nonatomic,strong) UILabel * titelLab;
@property (nonatomic,strong) UILabel * subNameLab;

@end

@implementation SubNameCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        UILabel *titelLab = [[UILabel alloc] init];
        titelLab.font = [UIFont systemFontOfSize:14];
        titelLab.textColor = [UIColor blackColor];
        titelLab.textAlignment = NSTextAlignmentLeft;
        self.titelLab = titelLab;
        [self.contentView addSubview:self.titelLab];
        
        UILabel *subNameLab = [[UILabel alloc] init];
        subNameLab.font = [UIFont systemFontOfSize:14];
        subNameLab.textColor = [UIColor blackColor];
        subNameLab.textAlignment = NSTextAlignmentRight;
        subNameLab.numberOfLines = 0;
        self.subNameLab = subNameLab;
        [self.contentView addSubview:self.subNameLab];
    }
    return self;
}

-(void)setIndexPath:(NSIndexPath *)indexPath{
    _indexPath = indexPath;
    self.subNameLab.tag = _indexPath.row;
}

-(void)setTitel:(NSString *)titel{
    _titel = titel;
    self.titelLab.text = _titel;
}

-(void)setSubTitel:(NSString *)subTitel{
    _subTitel = subTitel;
    self.subNameLab.text = _subTitel;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    self.titelLab.frame = CGRectMake(15,0, 200, self.frame.size.height);
    self.subNameLab.frame = CGRectMake(self.frame.size.width-140, 0,110, self.frame.size.height);
    
}

@end
