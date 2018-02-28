//
//  UIView+JTLayout.h
//  testLayout
//
//  Created by 祁景天 on 2018/2/9.
//  Copyright © 2018年 联璧科技. All rights reserved.
//

#import <UIKit/UIKit.h>

#define JT_kScreenWidth ([[UIScreen mainScreen]bounds].size.width)
#define JT_kScreenHeight ([[UIScreen mainScreen]bounds].size.height)


@interface UIView (JTAdd)

#pragma mark - layout
@property (nonatomic) CGFloat jt_left;        ///< Shortcut for frame.origin.x.
@property (nonatomic) CGFloat jt_top;         ///< Shortcut for frame.origin.y
@property (nonatomic) CGFloat jt_right;       ///< Shortcut for frame.origin.x + frame.size.width
@property (nonatomic) CGFloat jt_bottom;      ///< Shortcut for frame.origin.y + frame.size.height
@property (nonatomic) CGFloat jt_width;       ///< Shortcut for frame.size.width.
@property (nonatomic) CGFloat jt_height;      ///< Shortcut for frame.size.height.
@property (nonatomic) CGFloat jt_centerX;     ///< Shortcut for center.x
@property (nonatomic) CGFloat jt_centerY;     ///< Shortcut for center.y
@property (nonatomic) CGPoint jt_origin;      ///< Shortcut for frame.origin.
@property (nonatomic) CGSize  jt_size;        ///< Shortcut for frame.size.

@property (nonatomic, readonly) UIEdgeInsets jt_safeAreaInsets;

@property (nullable, nonatomic, readonly) UIViewController *jt_viewController;

@end
