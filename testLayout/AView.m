//
//  AView.m
//  testLayout
//
//  Created by 祁景天 on 2018/2/9.
//  Copyright © 2018年 联璧科技. All rights reserved.
//

#import "AView.h"

@interface AView ()
@property (nonatomic, weak) UILabel *titleLabel;
@end

@implementation AView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //self.titleLabel = [UILabel new];
        
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    
}

- (void)didMoveToSuperview {
    [super didMoveToSuperview];
    
    
}

@end
