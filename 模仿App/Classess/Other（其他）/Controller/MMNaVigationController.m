//
//  MMNaVigationController.m
//  模仿App
//
//  Created by 张明 on 16/5/30.
//  Copyright © 2016年 张明. All rights reserved.
//

#import "MMNaVigationController.h"

@interface MMNaVigationController ()

@end

@implementation MMNaVigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    if (self.childViewControllers.count > 0) {
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:@"返回" forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@""] forState:UIControlStateHighlighted];
        btn.size = CGSizeMake(70, 30);
        
        [btn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
        
        viewController.hidesBottomBarWhenPushed = YES;
        
        
    }
    
}
- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
