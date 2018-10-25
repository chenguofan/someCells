//
//  SwitchCell.m
//  
//
//  Created by ChenFan on 2018/8/28.
//

#import "SwitchCell.h"

@interface SwitchCell ()

@property (nonatomic,strong) UISwitch * swtch;
@property (nonatomic,strong) UILabel * titelLab;

@end

@implementation SwitchCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
     
        UILabel *titelLab = [[UILabel alloc] init];
        titelLab.font = [UIFont systemFontOfSize:14];
        titelLab.textColor = [UIColor blackColor];
        titelLab.textAlignment = NSTextAlignmentLeft;
        titelLab.numberOfLines = 0;
        self.titelLab = titelLab;
        [self.contentView addSubview:self.titelLab];
        
        UISwitch *swtch = [[UISwitch alloc] init];
        swtch.onTintColor = [UIColor greenColor];
        [swtch addTarget:self action:@selector(swichChange:) forControlEvents:UIControlEventValueChanged];
        self.swtch = swtch;
        self.accessoryView = self.swtch;
    }
    return self;
}

-(void)setIndexPath:(NSIndexPath *)indexPath{
    _indexPath = indexPath;
    self.swtch.tag = _indexPath.row;
}

-(void)setTitel:(NSString *)titel{
    _titel = titel;
    self.titelLab.text = _titel;
}

-(void)setIsOn:(BOOL)isOn{
    _isOn = isOn;
    [self.swtch setOn:_isOn];
}

-(void)swichChange:(UISwitch *)aSwitch{
    if (self.swichCellBlock) {
        self.swichCellBlock(aSwitch);
    }
}

-(void)layoutSubviews{
    [super layoutSubviews];
    
    self.titelLab.frame = CGRectMake(15, 0, 200, self.frame.size.height);
}

@end

