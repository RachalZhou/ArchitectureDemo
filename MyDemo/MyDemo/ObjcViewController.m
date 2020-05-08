//
//  ObjcViewController.m
//  MyDemo
//
//  Created by 周日朝 on 2020/5/7.
//  Copyright © 2020 ZRC. All rights reserved.
//

#import "ObjcViewController.h"
#import <CTMediator+GoodsList.h>
#import <GoodsDetailExtension-Swift.h>

@interface ObjcViewController ()

@end

@implementation ObjcViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Objc page";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:({
        UIButton *btn = [[UIButton alloc] init];
        btn.frame = CGRectMake(20, 100, 150, 50);
        btn.backgroundColor = [UIColor blueColor];
        [btn setTitle:@"Objc to Objc" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(goToObjc) forControlEvents:UIControlEventTouchUpInside];
        btn;
    })];
    
    [self.view addSubview:({
        UIButton *btn = [[UIButton alloc] init];
        btn.frame = CGRectMake(20, 170, 150, 50);
        btn.backgroundColor = [UIColor orangeColor];
        [btn setTitle:@"Objc to Swift" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(goToSwift) forControlEvents:UIControlEventTouchUpInside];
        btn;
    })];
}

- (void)goToObjc {
    UIViewController *vc = [[CTMediator sharedInstance] viewControllerForGoodsList:@"大米" kindId:222 storeId:1];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)goToSwift {
    UIViewController *vc = [[CTMediator sharedInstance] viewControllerForGoodsDetail:8088];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
