//
//  GoodsListViewController.m
//  MyDemo
//
//  Created by 周日朝 on 2020/4/30.
//  Copyright © 2020 ZRC. All rights reserved.
//

#import "GoodsListViewController.h"
#import <CTMediator/CTMediator.h>
#import <GoodsDetailExtension/GoodsDetailExtension-Swift.h>

@interface GoodsListViewController ()

@property (nonatomic, copy) NSString *keyWord;
@property (nonatomic, assign) NSInteger kindId;
@property (nonatomic, assign) NSInteger storeId;

@end

@implementation GoodsListViewController

- (instancetype)initWithKeyWord:(NSString *)keyWord kindId:(NSInteger)kindId storeId:(NSInteger)storeId {
    self = [super init];
    if (self) {
        self.keyWord = keyWord;
        self.kindId = kindId;
        self.storeId = storeId;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"商品列表 Objc";
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:({
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 90, 360, 200)];
        label.numberOfLines = 0;
        label.text = [NSString stringWithFormat:@"关键词：%@\n分类ID：%ld\n店铺ID：%ld", self.keyWord, self.kindId, self.storeId];
        label;
    })];
    
    [self.view addSubview:({
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 320, 100, 60)];
        btn.backgroundColor = [UIColor orangeColor];
        [btn setTitle:@"商品详情" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(goToDetail) forControlEvents:UIControlEventTouchUpInside];
        btn;
    })];
}

- (void)goToDetail {
    NSInteger goodsId = 8088;
    UIViewController *vc = [[CTMediator sharedInstance] viewControllerForGoodsDetail:goodsId];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
