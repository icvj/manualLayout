//
//  ViewController.m
//  testLayout
//
//  Created by 祁景天 on 2018/2/9.
//  Copyright © 2018年 联璧科技. All rights reserved.
//

#import "ViewController.h"
#import "UIView+JTAdd.h"
#import "AView.h"



@interface ViewController ()
@property (nonatomic, weak) AView *aview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor = [UIColor grayColor];
    label.numberOfLines = 0;
    label.text = @"ViewControllerViewControllerViewControllerViewControllerViewControllerViewController";
    label.jt_size = CGSizeMake(100, 0);
    [label sizeToFit];
    //label.jt_size = [label sizeThatFits:CGSizeMake(100, MAXFLOAT)];
    label.jt_origin = CGPointMake(50, 50);
    
    [self.view addSubview:label];
    
    UIButton *button0 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button0 setTitle:@"add" forState:UIControlStateNormal];
    [button0 addTarget:self action:@selector(add:) forControlEvents:UIControlEventTouchUpInside];
    [button0 sizeToFit];
    button0.jt_origin = CGPointMake(50, label.jt_bottom + 20);
    [self.view addSubview:button0];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    [button1 setTitle:@"delete" forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(delete:) forControlEvents:UIControlEventTouchUpInside];
    [button1 sizeToFit];
    button1.jt_top = button0.jt_top;
    button1.jt_right = self.view.jt_right - 10;
    [self.view addSubview:button1];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    NSLog(@"%@", NSStringFromUIEdgeInsets(self.view.jt_safeAreaInsets));
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
}

- (void)viewSafeAreaInsetsDidChange {
    [super viewSafeAreaInsetsDidChange];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    
}

- (void)add:(UIButton *)sender {
    AView *view = [[AView alloc] initWithFrame:CGRectMake(50, 300, 100, 100)];
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
    self.aview = view;
}

- (void)delete:(UIButton *)sender {
    [self.aview removeFromSuperview];
}


@end
