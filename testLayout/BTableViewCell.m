//
//  BTableViewCell.m
//  testLayout
//
//  Created by 祁景天 on 2018/2/11.
//  Copyright © 2018年 联璧科技. All rights reserved.
//

#import "BTableViewCell.h"
#import "UIView+JTAdd.h"
#import "NSString+JTAdd.h"

@interface BTableViewCell ()
@property (nonatomic) UILabel *titleLabel;
@property (nonatomic) UILabel *contentLabel;
@end

@implementation BTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.titleLabel = [UILabel new];
        self.titleLabel.font = [UIFont systemFontOfSize:10];
        self.titleLabel.numberOfLines = 0;
        [self addSubview:self.titleLabel];
        
        self.contentLabel = [UILabel new];
        self.contentLabel.font = [UIFont systemFontOfSize:10];
        self.contentLabel.numberOfLines = 0;
        [self addSubview:self.contentLabel];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (self.model == nil) return;

    self.titleLabel.jt_width = self.jt_width - 20;
    self.titleLabel.jt_top = 10;
    self.titleLabel.jt_left = 10;
    [self.titleLabel sizeToFit];
    
    self.contentLabel.jt_width = self.jt_width - 20;
    self.contentLabel.jt_top = self.titleLabel.jt_bottom + 10;
    self.contentLabel.jt_left = self.titleLabel.jt_left;
    [self.contentLabel sizeToFit];
    
    NSLog(@"%lu layoutSubviews", (unsigned long)self.hash);
}

- (void)prepareForReuse {
    [super prepareForReuse];
    
    NSLog(@"%lu prepareForReuse", (unsigned long)self.hash);
}

+ (CGFloat)cellHeightForModel:(BModel *)model {
    CGFloat height = 30;
    height += [model.title jt_heightForFont:[UIFont systemFontOfSize:10] width:JT_kScreenWidth - 20];
    height += [model.content jt_heightForFont:[UIFont systemFontOfSize:10] width:JT_kScreenWidth - 20];
    return height;
}

- (void)setModel:(BModel *)model {
    _model = model;
    
    self.titleLabel.text = model.title;
    self.contentLabel.text = model.content;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


@end
