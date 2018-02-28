# manualLayout
使用 UIView+JTAdd 分类，方便快捷的手动计算frame 布局。

# UIView+JTAdd.h

#import <UIKit/UIKit.h>

#define JT_kScreenWidth ([[UIScreen mainScreen]bounds].size.width)

#define JT_kScreenHeight ([[UIScreen mainScreen]bounds].size.height)

@interface UIView (JTAdd)

@property (nonatomic) CGFloat jt_left;        

@property (nonatomic) CGFloat jt_top;         

@property (nonatomic) CGFloat jt_right;       

@property (nonatomic) CGFloat jt_bottom;      

@property (nonatomic) CGFloat jt_width;       

@property (nonatomic) CGFloat jt_height;      

@property (nonatomic) CGFloat jt_centerX;    

@property (nonatomic) CGFloat jt_centerY;     

@property (nonatomic) CGPoint jt_origin;      

@property (nonatomic) CGSize  jt_size;        

@property (nonatomic, readonly) UIEdgeInsets jt_safeAreaInsets;

@property (nullable, nonatomic, readonly) UIViewController *jt_viewController;

@end
