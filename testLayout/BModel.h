//
//  AModel.h
//  testLayout
//
//  Created by 祁景天 on 2018/2/11.
//  Copyright © 2018年 联璧科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface BModel : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *content;

@property (nonatomic, assign) CGFloat cellHeight;
@end
