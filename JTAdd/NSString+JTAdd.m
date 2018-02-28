//
//  NSString+JTAdd.m
//  testLayout
//
//  Created by 祁景天 on 2018/2/11.
//  Copyright © 2018年 联璧科技. All rights reserved.
//

#import "NSString+JTAdd.h"

@implementation NSString (JTAdd)

- (CGSize)jt_sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode {
    CGSize result;
    if (!font) font = [UIFont systemFontOfSize:12];
    if ([self respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)]) {
        NSMutableDictionary *attr = [NSMutableDictionary new];
        attr[NSFontAttributeName] = font;
        if (lineBreakMode != NSLineBreakByWordWrapping) {
            NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
            paragraphStyle.lineBreakMode = lineBreakMode;
            attr[NSParagraphStyleAttributeName] = paragraphStyle;
        }
        CGRect rect = [self boundingRectWithSize:size
                                         options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                      attributes:attr context:nil];
        result = rect.size;
    } else {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
        result = [self sizeWithFont:font constrainedToSize:size lineBreakMode:lineBreakMode];
#pragma clang diagnostic pop
    }
    return result;
}

- (CGFloat)widthForFont:(UIFont *)font {
    CGSize size = [self jt_sizeForFont:font size:CGSizeMake(HUGE, HUGE) mode:NSLineBreakByWordWrapping];
    return size.width;
}

- (CGFloat)jt_heightForFont:(UIFont *)font width:(CGFloat)width {
    CGSize size = [self jt_sizeForFont:font size:CGSizeMake(width, HUGE) mode:NSLineBreakByWordWrapping];
    return size.height;
}

@end
