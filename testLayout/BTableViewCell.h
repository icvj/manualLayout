//
//  BTableViewCell.h
//  testLayout
//
//  Created by 祁景天 on 2018/2/11.
//  Copyright © 2018年 联璧科技. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BModel.h"


@interface BTableViewCell : UITableViewCell

@property (nonatomic) BModel *model;

+ (CGFloat)cellHeightForModel:(BModel *)model;

@end
