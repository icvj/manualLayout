//
//  NSString+JTAdd.h
//  testLayout
//
//  Created by 祁景天 on 2018/2/11.
//  Copyright © 2018年 联璧科技. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface NSString (JTAdd)

- (CGSize)jt_sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode;

- (CGFloat)jt_heightForFont:(UIFont *)font width:(CGFloat)width;

@end
