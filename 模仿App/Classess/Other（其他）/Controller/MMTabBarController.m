//
//  MMTabBarController.m
//  模仿App
//
//  Created by 张明 on 16/5/30.
//  Copyright © 2016年 张明. All rights reserved.
//

#import "MMTabBarController.h"
#import "CommunityViewController.h"
#import "KitchenViewController.h"
#import "MarketViewController.h"
#import "MainViewController.h"
#import "MMNaVigationController.h"
@interface MMTabBarController ()

@end

@implementation MMTabBarController

+ (void)initialize
{
    UITabBarItem *tabBarItem = [UITabBarItem appearance];
    
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    NSMutableDictionary *selectAttrs = [NSMutableDictionary dictionary];
    selectAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    [tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [tabBarItem setTitleTextAttributes:selectAttrs forState:UIControlStateSelected];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpChildWithController:[[KitchenViewController alloc] init] andTitle:@"下厨房" andImage:@"" andSelectedImage:@""];
    [self setUpChildWithController:[[CommunityViewController alloc] init] andTitle:@"社区" andImage:@"" andSelectedImage:@""];
    
    [self setUpChildWithController:[[MarketViewController alloc] init] andTitle:@"市集" andImage:@"" andSelectedImage:@""];
    [self setUpChildWithController:[[MainViewController alloc] init] andTitle:@"我的" andImage:@"" andSelectedImage:@""];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUpChildWithController:(UIViewController *)vc andTitle:(NSString *)title andImage:(NSString *)image andSelectedImage:(NSString *)selectImage
{
    vc.navigationItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectImage];
    MMNaVigationController *nav = [[MMNaVigationController alloc]initWithRootViewController:vc];
    nav.tabBarItem.title = title;
    
    [self addChildViewController:nav];
 
}


@end
